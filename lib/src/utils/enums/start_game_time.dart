import 'package:charades/src/utils/interfaces/game_configs.dart';

enum StartGameTime implements GameSettings {
  threeSeconds,
  fiveSeconds,
  tenSeconds;

  @override
  String get text {
    switch (this) {
      case StartGameTime.threeSeconds:
        return '3 s';
      case StartGameTime.fiveSeconds:
        return '5 s';
      case StartGameTime.tenSeconds:
        return '10 s';
    }
  }

  @override
  int get inSeconds {
    switch (this) {
      case StartGameTime.threeSeconds:
        return 3;
      case StartGameTime.fiveSeconds:
        return 5;
      case StartGameTime.tenSeconds:
        return 10;
    }
  }
}
