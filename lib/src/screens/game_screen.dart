import 'dart:async';
import 'package:charades/src/bloc/game_bloc.dart';
import 'package:charades/src/screens/score_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:vibration/vibration.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Timer? _timer;
  final Stopwatch _stopwatch = Stopwatch();

  late int _totalDurationMs;
  int _millisecondsRemaining = 0;
  bool _isStarting = true;

  StreamSubscription? _accelerometerSubscription;

  bool _hasReturnedToNeutral = true;
  static const double neutralThreshold = 1.5;
  static const double tiltThreshold = 8.0;

  // 30 FPS is plenty for a smooth countdown without hogging CPU
  static const int tickRateMs = 33;

  double latestZ = 0.0;

  @override
  void initState() {
    super.initState();
    // Keep the screen on while this screen is active
    WakelockPlus.enable();

    // Start with the initial 3-2-1 countdown duration
    _totalDurationMs =
        context.read<GameBloc>().state.countdownTime.value * 1000;
    _millisecondsRemaining = _totalDurationMs;

    if (_isMobile) {
      _initSensors();
    }

    _startTimerLoop();
  }

  bool get _isMobile =>
      defaultTargetPlatform == TargetPlatform.android ||
      defaultTargetPlatform == TargetPlatform.iOS;

  bool get _isPositionValid => !_isMobile || latestZ.abs() <= neutralThreshold;

  // Uses .ceil() so the user sees "1" until the very last millisecond hits 0
  int get _secondsDisplay => (_millisecondsRemaining / 1000).ceil();

  void _initSensors() {
    _accelerometerSubscription = accelerometerEventStream().listen((event) {
      setState(() {
        latestZ = event.z;
      });

      if (_isStarting) return;

      if (event.z.abs() <= neutralThreshold) {
        _hasReturnedToNeutral = true;
        return;
      }

      if (_hasReturnedToNeutral) {
        if (event.z > tiltThreshold) {
          _handleAnswer(false); // Pass
        } else if (event.z < -tiltThreshold) {
          _handleAnswer(true); // Correct
        }
      }
    });
  }

  void _startTimerLoop() {
    _timer?.cancel();
    _stopwatch.reset();
    _stopwatch.start();

    _timer = Timer.periodic(const Duration(milliseconds: tickRateMs), (timer) {
      if (_isStarting) {
        if (_isPositionValid) {
          if (!_stopwatch.isRunning) _stopwatch.start();

          _updateRemainingTime();

          if (_millisecondsRemaining <= 0) {
            _transitionToMainGame();
          }
        } else {
          // Pause the clock if the user tilts the phone away during countdown
          if (_stopwatch.isRunning) _stopwatch.stop();
        }
      } else {
        // Active Game: Always running
        _updateRemainingTime();

        if (_millisecondsRemaining <= 0) {
          _timer?.cancel();
          _navigateToScore();
        }
      }
    });
  }

  void _updateRemainingTime() {
    final int oldSeconds = _secondsDisplay;

    setState(() {
      _millisecondsRemaining =
          _totalDurationMs - _stopwatch.elapsedMilliseconds;
      if (_millisecondsRemaining < 0) _millisecondsRemaining = 0;
    });

    final int newSeconds = _secondsDisplay;

    // Detect when a second has passed
    if (newSeconds != oldSeconds) {
      if (_isStarting) {
        // Vibrate during the 3-2-1 countdown
        if (newSeconds == 0) {
          // Intense vibration for the final "0" (Game Start)
          Vibration.vibrate(duration: 150);
        } else {
          Vibration.vibrate(duration: 50);
        }
      } else {
        // Active game vibrations
        if (newSeconds == 0) {
          // Intense vibration for the final "0" (Game End)
          Vibration.vibrate(duration: 500);
        } else if (newSeconds <= 10) {
          // Intensifying vibrations for the last 10 seconds
          // Duration increases as seconds decrease: (11 - 1 = 10 * 25 = 250ms)
          int intensityDuration = (11 - newSeconds) * 25;
          Vibration.vibrate(duration: intensityDuration);
        }
      }
    }
  }

  void _transitionToMainGame() {
    setState(() {
      _isStarting = false;
      _totalDurationMs =
          context.read<GameBloc>().state.gameDuration.value * 1000;
      _millisecondsRemaining = _totalDurationMs;
    });
    _stopwatch.reset();
    _stopwatch.start();
  }

  void _handleAnswer(bool isCorrect) {
    if (_isStarting) return;

    // Vibrate on answer
    Vibration.vibrate(duration: 100);

    setState(() => _hasReturnedToNeutral = false);
    context.read<GameBloc>().add(AnswerWord(isCorrect));
  }

  void _navigateToScore() {
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const ScoreScreen()),
      );
    }
  }

  @override
  void dispose() {
    // Release the lock so the phone can sleep normally again
    WakelockPlus.disable();

    _timer?.cancel();
    _stopwatch.stop();
    _accelerometerSubscription?.cancel();
    super.dispose();
  }

  Widget _buildStartingUI() {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Center(
        child: !_isPositionValid
            ? const Text(
                "Place phone upright to start",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            : Text(
                "$_secondsDisplay",
                style: const TextStyle(
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<GameBloc, GameState>(
        listener: (context, state) {
          if (state.currentWordIndex >= state.gameWords.length &&
              state.gameWords.isNotEmpty) {
            _timer?.cancel();
            _navigateToScore();
          }
        },
        builder: (context, state) {
          if (state.gameWords.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          if (_isStarting) {
            return _buildStartingUI();
          }

          return Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: _GameActionButton(
                      color: Colors.red.withOpacity(0.8),
                      label: "PASS",
                      labelPosition: Alignment.topCenter,
                      onTap: () => _handleAnswer(false),
                    ),
                  ),
                  Expanded(
                    child: _GameActionButton(
                      color: Colors.green.withOpacity(0.8),
                      label: "CORRECT",
                      labelPosition: Alignment.bottomCenter,
                      onTap: () => _handleAnswer(true),
                    ),
                  ),
                ],
              ),
              IgnorePointer(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "$_secondsDisplay",
                        style: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(blurRadius: 10, color: Colors.black45),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        state.gameWords[state.currentWordIndex].toUpperCase(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 80,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(blurRadius: 15, color: Colors.black54),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _GameActionButton extends StatelessWidget {
  final Color color;
  final String label;
  final Alignment labelPosition;
  final VoidCallback onTap;

  const _GameActionButton({
    required this.color,
    required this.label,
    required this.labelPosition,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: labelPosition,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            label.toUpperCase(),
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 32,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
