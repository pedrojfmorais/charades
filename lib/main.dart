import 'package:charades/src/bloc/game_bloc.dart';
import 'package:charades/src/models/category.dart';
import 'package:charades/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  // Add your categories here!
  List<Category> initialCategories = [
    Category(
      name: "Movies",
      words: ["Jaws", "Star Wars", "Inception", "The Matrix", "Titanic"],
    ),
    Category(
      name: "Animals",
      words: ["Elephant", "Honey Badger", "Penguin", "Giraffe", "Ostrich"],
    ),
    Category(
      name: "Video Games",
      words: ["Mario", "Zelda", "Elden Ring", "Minecraft", "Halo"],
    ),
  ];

  runApp(
    BlocProvider(
      create: (context) => GameBloc(initialCategories),
      child: CharadesApp(),
    ),
  );
}

class CharadesApp extends StatelessWidget {
  const CharadesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charades Master',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}


// TODO (Pedro Morais - 2026-04-08): Ideias
// Escolher um jogador já existente no highscore
// Load categories from json
// Tilt para passar ou acertar
// Adicionar vibração
// Countdown 3s (default) antes de começar
//   - Só começa se o telemóvel tiver direiro
// Exportar e importar highscore (json)
// Pausa durante o jogo (opções: retomar, home, reiniciar -> dá shuffle 
//  às palavras outra vez)
// Ecrã de resultados (jogo fast ou entre jogadores) mostra 
//  palavras acertadas e erradas
//   - Jogo fast: Botão de reiniciar ou ir para o home screen
//   - Jogo normal: Botão de próximo jogador / reiniciar 
//      e botão terminar / ir para o home screen
//   - Highscore permite ver em mais detalhe as palavras acertadas e 
//      erradas (organizadas por categoria)
// 
// Versões diferentes de mobile para desktop
// - Desktop: big green button on the right and big red button on the left
// - Mobile: tilt down to correct; tilt up to pass; 
//    click right half of screen to correct; left half to pass 
//    (algum tipo de indicação para carregar? muito subtil)

// Ver exemplo app GuessUp, Charades (telemóvel Bia)