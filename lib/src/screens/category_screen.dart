import 'package:charades/src/bloc/bloc/game_bloc.dart';
import 'package:charades/src/screens/game_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Categories")),
      body: BlocBuilder<GameBloc, GameState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: state.categories.length,
                  itemBuilder: (context, index) {
                    final category = state.categories[index];
                    return CheckboxListTile(
                      title: Text(category.name),
                      value: category.isSelected,
                      onChanged: (bool? value) {
                        context.read<GameBloc>().add(
                          ToggleCategory(index, value!),
                        );
                      },
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: Text("Start Playing!"),
                  onPressed: () {
                    final hasSelection = state.categories.any(
                      (c) => c.isSelected,
                    );

                    if (hasSelection) {
                      context.read<GameBloc>().add(StartPlaying());
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => GameScreen()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Select at least one category!"),
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
