import 'package:charades/src/bloc/bloc/game_bloc.dart';
import 'package:charades/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({super.key});

  @override
  ScoreScreenState createState() => ScoreScreenState();
}

class ScoreScreenState extends State<ScoreScreen> {
  @override
  void initState() {
    super.initState();
    // Save the score once when the screen is initialized
    context.read<GameBloc>().add(SaveCurrentScore());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Over"),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Final Score", style: TextStyle(fontSize: 24)),
                Text(
                  "${state.score} / ${state.gameWords.length}",
                  style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  child: Text("Back to Home"),
                  onPressed: () {
                    context.read<GameBloc>().add(ResetGame());
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                      (Route<dynamic> route) => false,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
