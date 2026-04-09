import 'package:charades/src/bloc/bloc/game_bloc.dart';
import 'package:charades/src/screens/game_screen.dart';
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
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Tempo antes de começar", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                _buildSegmentedControl<int>(
                  values: [3, 5, 10],
                  currentValue: state.countdownTime,
                  onChanged: (val) => context.read<GameBloc>().add(UpdateConfigs(countdownTime: val)),
                  labelSuffix: "s",
                ),
                const SizedBox(height: 30),
                const Text("Tempo de jogo", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                _buildSegmentedControl<int>(
                  values: [30, 60, 120, 180],
                  currentValue: state.gameDuration,
                  onChanged: (val) => context.read<GameBloc>().add(UpdateConfigs(gameDuration: val)),
                  labelSuffix: "s",
                ),
                const Spacer(),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<GameBloc>().add(const StartPlaying());
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const GameScreen()),
                      );
                    },
                    child: const Text("Start Game"),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildSegmentedControl<T>({
    required List<T> values,
    required T currentValue,
    required ValueChanged<T> onChanged,
    required String labelSuffix,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: values.map((val) {
        final isSelected = val == currentValue;
        return ChoiceChip(
          label: Text("$val$labelSuffix"),
          selected: isSelected,
          onSelected: (_) => onChanged(val),
        );
      }).toList(),
    );
  }
}