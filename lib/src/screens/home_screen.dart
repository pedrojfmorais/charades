import 'package:charades/src/bloc/game_bloc.dart';
import 'package:charades/src/screens/highscore_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category_screen.dart';
import 'player_setup_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Charades Master")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Fast Game"),
              onPressed: () {
                context.read<GameBloc>().add(SavePlayers([])); // Clear players
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CategoryScreen()),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Regular Game"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlayerSetupScreen()),
              ),
            ),
            SizedBox(height: 40),
            TextButton.icon(
              icon: Icon(Icons.leaderboard, color: Colors.amber),
              label: Text("View Highscores"),
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HighscoreScreen()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
