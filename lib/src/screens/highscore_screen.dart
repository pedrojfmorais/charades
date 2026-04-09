import 'package:charades/src/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HighscoreScreen extends StatelessWidget {
  const HighscoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<GameBloc>().add(LoadHighscores());

    return Scaffold(
      appBar: AppBar(title: Text("Top Scores")),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          if (state.highscores.isEmpty) {
            return Center(child: Text("No high scores yet. Go play!"));
          }

          return ListView.builder(
            itemCount: state.highscores.length,
            itemBuilder: (context, index) {
              final data = state.highscores[index].split('|');
              final score = data[0];
              final name = data[1];

              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: index == 0 ? Colors.amber : Colors.blueGrey,
                  child: Text("#${index + 1}"),
                ),
                title: Text(name),
                trailing: Text(
                  "$score pts",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
