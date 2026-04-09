import 'dart:async';
import 'package:charades/src/bloc/bloc/game_bloc.dart';
import 'package:charades/src/screens/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  Timer? _timer;
  late int _secondsRemaining;
  bool _isStarting = true; // Flag for the initial "Get Ready" countdown

  @override
  void initState() {
    super.initState();
    // Initialize with the countdown time from settings (default 3s)
    _secondsRemaining = context.read<GameBloc>().state.countdownTime;
    _startInitialCountdown();
  }

  /// Timer for the "3... 2... 1..." start sequence
  void _startInitialCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 1) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        _timer?.cancel();
        setState(() {
          _isStarting = false;
          // Switch to the game duration from settings (default 30s)
          _secondsRemaining = context.read<GameBloc>().state.gameDuration;
        });
        _startGameTimer();
      }
    });
  }

  /// Timer for the actual gameplay duration
  void _startGameTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_secondsRemaining > 0) {
        setState(() {
          _secondsRemaining--;
        });
      } else {
        _timer?.cancel();
        _navigateToScore();
      }
    });
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
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isStarting ? "Get Ready!" : "Game On!"),
        automaticallyImplyLeading: false,
      ),
      body: BlocConsumer<GameBloc, GameState>(
        listener: (context, state) {
          // End game if words run out before the timer does
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

          // Show the "Get Ready" overlay if the game hasn't started
          if (_isStarting) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Starting in...", style: TextStyle(fontSize: 24)),
                  Text(
                    "$_secondsRemaining",
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }

          // Main Game UI
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Countdown display
                Text(
                  "$_secondsRemaining",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: _secondsRemaining <= 5 ? Colors.red : Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  state.gameWords[state.currentWordIndex],
                  style: const TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () =>
                          context.read<GameBloc>().add(const AnswerWord(false)),
                      child: const Text(
                        "Pass",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 15,
                        ),
                      ),
                      onPressed: () =>
                          context.read<GameBloc>().add(const AnswerWord(true)),
                      child: const Text(
                        "Correct!",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
