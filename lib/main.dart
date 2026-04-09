import 'package:charades/src/bloc/game_bloc.dart';
import 'package:charades/src/models/category.dart';
import 'package:charades/src/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  // Add your categories here!
  List<Category> initialCategories = [
    Category(
      name: "Animals",
      words: [
        "Dog",
        "Cat",
        "Elephant",
        "Lion",
        "Tiger",
        "Giraffe",
        "Zebra",
        "Monkey",
        "Bear",
        "Wolf",
        "Fox",
        "Rabbit",
        "Deer",
        "Horse",
        "Cow",
        "Pig",
        "Sheep",
        "Goat",
        "Chicken",
        "Duck",
        "Goose",
        "Turkey",
        "Penguin",
        "Eagle",
        "Hawk",
        "Owl",
        "Parrot",
        "Flamingo",
        "Peacock",
        "Swan",
        "Shark",
        "Dolphin",
        "Whale",
        "Octopus",
        "Squid",
        "Crab",
        "Lobster",
        "Jellyfish",
        "Seal",
        "Walrus",
        "Crocodile",
        "Alligator",
        "Snake",
        "Lizard",
        "Chameleon",
        "Turtle",
        "Tortoise",
        "Frog",
        "Toad",
        "Salamander",
        "Butterfly",
        "Bee",
        "Ant",
        "Spider",
        "Scorpion",
        "Grasshopper",
        "Dragonfly",
        "Beetle",
        "Ladybug",
        "Mosquito",
        "Camel",
        "Kangaroo",
        "Koala",
        "Panda",
        "Sloth",
        "Hedgehog",
        "Bat",
        "Raccoon",
        "Skunk",
        "Otter",
        "Weasel",
        "Ferret",
        "Mole",
        "Armadillo",
        "Platypus",
        "Wombat",
        "Lemur",
        "Meerkat",
        "Hyena",
        "Jackal",
        "Bison",
        "Buffalo",
        "Antelope",
        "Gazelle",
        "Moose",
        "Reindeer",
        "Donkey",
        "Mule",
        "Chimpanzee",
        "Gorilla",
        "Orangutan",
        "Leopard",
        "Cheetah",
        "Jaguar",
        "Panther",
        "Cougar",
        "Bobcat",
        "Lynx",
        "Badger",
        "Wolverine",
        "Alpaca",
        "Llama",
        "Yak",
        "Boar",
        "Opossum",
        "Tasmanian Devil",
        "Dingo",
        "Kiwi",
        "Cassowary",
        "Emu",
        "Pelican",
        "Seagull",
        "Woodpecker",
        "Canary",
        "Finch",
        "Sparrow",
        "Robin",
        "Crow",
        "Raven",
        "Magpie",
        "Swordfish",
        "Tuna",
        "Salmon",
        "Trout",
        "Piranha",
        "Clownfish",
        "Seahorse",
        "Starfish",
        "Manta Ray",
        "Stingray",
        "Electric Eel",
        "Komodo Dragon",
        "Axolotl",
        "Narwhal",
        "Beluga Whale",
        "Blue Whale",
        "Humpback Whale",
        "Orca",
        "Manatee",
        "Dugong",
      ],
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
// Refactor -> refactor services

// Ver exemplo app GuessUp, Charades (telemóvel Bia)