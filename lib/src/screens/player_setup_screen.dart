import 'package:charades/src/bloc/game_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'category_screen.dart';

class PlayerSetupScreen extends StatefulWidget {
  const PlayerSetupScreen({super.key});

  @override
  PlayerSetupScreenState createState() => PlayerSetupScreenState();
}

class PlayerSetupScreenState extends State<PlayerSetupScreen> {
  final List<TextEditingController> _controllers = [
    TextEditingController(),
    TextEditingController(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Enter Players")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _controllers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _controllers[index],
                    decoration: InputDecoration(
                      labelText: "Player ${index + 1} Name",
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            child: Text("Add Another Player"),
            onPressed: () =>
                setState(() => _controllers.add(TextEditingController())),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            child: Text("Next: Choose Categories"),
            onPressed: () {
              List<String> players = _controllers
                  .map((c) => c.text.trim())
                  .where((text) => text.isNotEmpty)
                  .toList();

              // Save to BLoC state
              context.read<GameBloc>().add(SavePlayers(players));

              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoryScreen()),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
