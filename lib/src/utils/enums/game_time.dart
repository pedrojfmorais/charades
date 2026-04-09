import 'package:charades/src/utils/interfaces/game_configs.dart';

enum GameTime implements GameSettings {
  thirtySeconds,
  oneMinute,
  twoMinutes,
  threeMinutes;

  @override
  String get text {
    switch (this) {
      case GameTime.thirtySeconds:
        return '30 s';
      case GameTime.oneMinute:
        return '60 s';
      case GameTime.twoMinutes:
        return '120 s';
      case GameTime.threeMinutes:
        return '180 s';
    }
  }

  @override
  int get inSeconds {
    switch (this) {
      case GameTime.thirtySeconds:
        return 30;
      case GameTime.oneMinute:
        return 60;
      case GameTime.twoMinutes:
        return 120;
      case GameTime.threeMinutes:
        return 180;
    }
  }
}
