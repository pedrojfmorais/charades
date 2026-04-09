import 'package:charades/src/utils/interfaces/game_configs.dart';

enum CountdownTime implements GameSettings<int> {
  threeSeconds,
  fiveSeconds,
  tenSeconds;

  
  static String get title => 'Countdown Time';

  @override
  String get valueHasString => '${value}s';

  @override
  int get value {
    switch (this) {
      case CountdownTime.threeSeconds:
        return 3;
      case CountdownTime.fiveSeconds:
        return 5;
      case CountdownTime.tenSeconds:
        return 10;
    }
  }
}
