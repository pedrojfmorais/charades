import 'package:charades/src/utils/interfaces/game_configs.dart';

enum GameDuration implements GameSettings<int> {
  thirtySeconds,
  oneMinute,
  twoMinutes,
  threeMinutes;

  static String get title => 'Game Duration';

  @override
  String get valueHasString => '${value}s';

  @override
  int get value {
    switch (this) {
      case GameDuration.thirtySeconds:
        return 30;
      case GameDuration.oneMinute:
        return 60;
      case GameDuration.twoMinutes:
        return 120;
      case GameDuration.threeMinutes:
        return 180;
    }
  }
}
