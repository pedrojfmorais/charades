part of 'game_bloc.dart';

@freezed
class GameEvent with _$GameEvent {
  const factory GameEvent.savePlayers(List<String> players) = SavePlayers;
  const factory GameEvent.toggleCategory(int index, bool isSelected) =
      ToggleCategory;
  const factory GameEvent.startPlaying() = StartPlaying;
  const factory GameEvent.answerWord(bool isCorrect) = AnswerWord;
  const factory GameEvent.resetGame() = ResetGame;
  const factory GameEvent.loadHighscores() = LoadHighscores;
  const factory GameEvent.saveCurrentScore() = SaveCurrentScore;
  const factory GameEvent.updateConfigs({
    CountdownTime? countdownTime,
    GameDuration? gameDuration,
  }) = UpdateConfigs;
}
