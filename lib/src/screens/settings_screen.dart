import 'package:charades/src/bloc/game_bloc.dart';
import 'package:charades/src/screens/game_screen.dart';
import 'package:charades/src/utils/enums/countdown_time.dart';
import 'package:charades/src/utils/enums/game_duration.dart';
import 'package:charades/src/widgets/sliding_segmented_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Game Settings")),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Tempo antes de começar",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                SlidingSegmentedButton<CountdownTime>(
                  options: CountdownTime.values,
                  selectedValue: state.countdownTime,
                  labelBuilder: (value) => value.title,
                  onValueChanged: (val) => context.read<GameBloc>().add(
                    UpdateConfigs(countdownTime: val),
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Tempo de jogo",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),
                SlidingSegmentedButton<GameDuration>(
                  options: GameDuration.values,
                  selectedValue: state.gameDuration,
                  labelBuilder: (value) => value.title,
                  onValueChanged: (val) => context.read<GameBloc>().add(
                    UpdateConfigs(gameDuration: val),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      context.read<GameBloc>().add(const StartPlaying());
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const GameScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      "START GAME",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
