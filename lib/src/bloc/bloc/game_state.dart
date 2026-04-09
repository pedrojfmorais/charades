part of 'game_bloc.dart';

@freezed
class GameState with _$GameState {
  const factory GameState({
    @Default([]) List<String> players,
    @Default([]) List<Category> categories,
    @Default([]) List<String> gameWords,
    @Default(0) int currentWordIndex,
    @Default(0) int score,
    @Default([]) List<String> highscores,
    // New Configuration Fields
    @Default(3) int countdownTime, // Time before game starts
    @Default(30) int gameDuration, // Time during gameplay
  }) = _GameState;
}