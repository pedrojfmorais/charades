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
    @Default(CountdownTime.threeSeconds) CountdownTime countdownTime,
    @Default(GameDuration.thirtySeconds) GameDuration gameDuration,
  }) = _GameState;
}
