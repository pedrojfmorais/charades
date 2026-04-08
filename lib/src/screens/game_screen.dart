import 'package:charades/src/bloc/bloc/game_bloc.dart';
import 'package:charades/src/screens/score_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Game On!"), automaticallyImplyLeading: false),
      body: BlocConsumer<GameBloc, GameState>(
        listener: (context, state) {
          if (state.currentWordIndex >= state.gameWords.length && state.gameWords.isNotEmpty) {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ScoreScreen()));
          }
        },
        builder: (context, state) {
          if (state.gameWords.isEmpty || state.currentWordIndex >= state.gameWords.length) {
            return Center(child: CircularProgressIndicator()); 
          }

          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  state.gameWords[state.currentWordIndex],
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      onPressed: () => context.read<GameBloc>().add(AnswerWord(false)), 
                      child: Text("Pass"),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                      onPressed: () => context.read<GameBloc>().add(AnswerWord(true)), 
                      child: Text("Correct!"),
                    ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}