import 'package:charades/src/models/category.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'game_event.dart';
part 'game_state.dart';

part 'game_bloc.freezed.dart';

class GameBloc extends Bloc<GameEvent, GameState> {
  GameBloc(List<Category> initialCategories)
    : super(GameState(categories: initialCategories)) {
    on<SavePlayers>((event, emit) {
      emit(state.copyWith(players: event.players));
    });

    on<ToggleCategory>((event, emit) {
      final updatedCategories = List<Category>.from(state.categories);
      // Freezed gives us copyWith on the Category model now too!
      updatedCategories[event.index] = updatedCategories[event.index].copyWith(
        isSelected: event.isSelected,
      );
      emit(state.copyWith(categories: updatedCategories));
    });

    on<StartPlaying>((event, emit) {
      List<String> words = state.categories
          .where((c) => c.isSelected)
          .expand((c) => c.words)
          .toList();

      words.shuffle();

      emit(state.copyWith(gameWords: words, currentWordIndex: 0, score: 0));
    });

    on<AnswerWord>((event, emit) {
      int newScore = event.isCorrect ? state.score + 1 : state.score;
      int newIndex = state.currentWordIndex + 1;

      emit(state.copyWith(score: newScore, currentWordIndex: newIndex));
    });

    on<ResetGame>((event, emit) {
      emit(
        GameState(categories: state.categories, highscores: state.highscores),
      );
    });

    on<LoadHighscores>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      final scores = prefs.getStringList('highscores') ?? [];
      emit(state.copyWith(highscores: scores));
    });

    on<SaveCurrentScore>((event, emit) async {
      final prefs = await SharedPreferences.getInstance();
      List<String> currentScores = prefs.getStringList('highscores') ?? [];

      String playerNames = state.players.isNotEmpty
          ? state.players.join(" & ")
          : "Fast Game Player";
      String newEntry = "${state.score}|$playerNames";

      currentScores.add(newEntry);

      currentScores.sort((a, b) {
        int scoreA = int.parse(a.split('|')[0]);
        int scoreB = int.parse(b.split('|')[0]);
        return scoreB.compareTo(scoreA);
      });

      if (currentScores.length > 10) {
        currentScores = currentScores.sublist(0, 10);
      }

      await prefs.setStringList('highscores', currentScores);
      emit(state.copyWith(highscores: currentScores));
    });

    // Inside GameBloc constructor
    on<UpdateConfigs>((event, emit) {
      emit(
        state.copyWith(
          countdownTime: event.countdownTime ?? state.countdownTime,
          gameDuration: event.gameDuration ?? state.gameDuration,
        ),
      );
    });
  }
}
