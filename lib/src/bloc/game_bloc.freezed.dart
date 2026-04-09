// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GameEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent()';
}


}

/// @nodoc
class $GameEventCopyWith<$Res>  {
$GameEventCopyWith(GameEvent _, $Res Function(GameEvent) __);
}


/// Adds pattern-matching-related methods to [GameEvent].
extension GameEventPatterns on GameEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SavePlayers value)?  savePlayers,TResult Function( ToggleCategory value)?  toggleCategory,TResult Function( StartPlaying value)?  startPlaying,TResult Function( AnswerWord value)?  answerWord,TResult Function( ResetGame value)?  resetGame,TResult Function( LoadHighscores value)?  loadHighscores,TResult Function( SaveCurrentScore value)?  saveCurrentScore,TResult Function( UpdateConfigs value)?  updateConfigs,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SavePlayers() when savePlayers != null:
return savePlayers(_that);case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that);case StartPlaying() when startPlaying != null:
return startPlaying(_that);case AnswerWord() when answerWord != null:
return answerWord(_that);case ResetGame() when resetGame != null:
return resetGame(_that);case LoadHighscores() when loadHighscores != null:
return loadHighscores(_that);case SaveCurrentScore() when saveCurrentScore != null:
return saveCurrentScore(_that);case UpdateConfigs() when updateConfigs != null:
return updateConfigs(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SavePlayers value)  savePlayers,required TResult Function( ToggleCategory value)  toggleCategory,required TResult Function( StartPlaying value)  startPlaying,required TResult Function( AnswerWord value)  answerWord,required TResult Function( ResetGame value)  resetGame,required TResult Function( LoadHighscores value)  loadHighscores,required TResult Function( SaveCurrentScore value)  saveCurrentScore,required TResult Function( UpdateConfigs value)  updateConfigs,}){
final _that = this;
switch (_that) {
case SavePlayers():
return savePlayers(_that);case ToggleCategory():
return toggleCategory(_that);case StartPlaying():
return startPlaying(_that);case AnswerWord():
return answerWord(_that);case ResetGame():
return resetGame(_that);case LoadHighscores():
return loadHighscores(_that);case SaveCurrentScore():
return saveCurrentScore(_that);case UpdateConfigs():
return updateConfigs(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SavePlayers value)?  savePlayers,TResult? Function( ToggleCategory value)?  toggleCategory,TResult? Function( StartPlaying value)?  startPlaying,TResult? Function( AnswerWord value)?  answerWord,TResult? Function( ResetGame value)?  resetGame,TResult? Function( LoadHighscores value)?  loadHighscores,TResult? Function( SaveCurrentScore value)?  saveCurrentScore,TResult? Function( UpdateConfigs value)?  updateConfigs,}){
final _that = this;
switch (_that) {
case SavePlayers() when savePlayers != null:
return savePlayers(_that);case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that);case StartPlaying() when startPlaying != null:
return startPlaying(_that);case AnswerWord() when answerWord != null:
return answerWord(_that);case ResetGame() when resetGame != null:
return resetGame(_that);case LoadHighscores() when loadHighscores != null:
return loadHighscores(_that);case SaveCurrentScore() when saveCurrentScore != null:
return saveCurrentScore(_that);case UpdateConfigs() when updateConfigs != null:
return updateConfigs(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( List<String> players)?  savePlayers,TResult Function( int index,  bool isSelected)?  toggleCategory,TResult Function()?  startPlaying,TResult Function( bool isCorrect)?  answerWord,TResult Function()?  resetGame,TResult Function()?  loadHighscores,TResult Function()?  saveCurrentScore,TResult Function( CountdownTime? countdownTime,  GameDuration? gameDuration)?  updateConfigs,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SavePlayers() when savePlayers != null:
return savePlayers(_that.players);case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that.index,_that.isSelected);case StartPlaying() when startPlaying != null:
return startPlaying();case AnswerWord() when answerWord != null:
return answerWord(_that.isCorrect);case ResetGame() when resetGame != null:
return resetGame();case LoadHighscores() when loadHighscores != null:
return loadHighscores();case SaveCurrentScore() when saveCurrentScore != null:
return saveCurrentScore();case UpdateConfigs() when updateConfigs != null:
return updateConfigs(_that.countdownTime,_that.gameDuration);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( List<String> players)  savePlayers,required TResult Function( int index,  bool isSelected)  toggleCategory,required TResult Function()  startPlaying,required TResult Function( bool isCorrect)  answerWord,required TResult Function()  resetGame,required TResult Function()  loadHighscores,required TResult Function()  saveCurrentScore,required TResult Function( CountdownTime? countdownTime,  GameDuration? gameDuration)  updateConfigs,}) {final _that = this;
switch (_that) {
case SavePlayers():
return savePlayers(_that.players);case ToggleCategory():
return toggleCategory(_that.index,_that.isSelected);case StartPlaying():
return startPlaying();case AnswerWord():
return answerWord(_that.isCorrect);case ResetGame():
return resetGame();case LoadHighscores():
return loadHighscores();case SaveCurrentScore():
return saveCurrentScore();case UpdateConfigs():
return updateConfigs(_that.countdownTime,_that.gameDuration);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( List<String> players)?  savePlayers,TResult? Function( int index,  bool isSelected)?  toggleCategory,TResult? Function()?  startPlaying,TResult? Function( bool isCorrect)?  answerWord,TResult? Function()?  resetGame,TResult? Function()?  loadHighscores,TResult? Function()?  saveCurrentScore,TResult? Function( CountdownTime? countdownTime,  GameDuration? gameDuration)?  updateConfigs,}) {final _that = this;
switch (_that) {
case SavePlayers() when savePlayers != null:
return savePlayers(_that.players);case ToggleCategory() when toggleCategory != null:
return toggleCategory(_that.index,_that.isSelected);case StartPlaying() when startPlaying != null:
return startPlaying();case AnswerWord() when answerWord != null:
return answerWord(_that.isCorrect);case ResetGame() when resetGame != null:
return resetGame();case LoadHighscores() when loadHighscores != null:
return loadHighscores();case SaveCurrentScore() when saveCurrentScore != null:
return saveCurrentScore();case UpdateConfigs() when updateConfigs != null:
return updateConfigs(_that.countdownTime,_that.gameDuration);case _:
  return null;

}
}

}

/// @nodoc


class SavePlayers implements GameEvent {
  const SavePlayers(final  List<String> players): _players = players;
  

 final  List<String> _players;
 List<String> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}


/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SavePlayersCopyWith<SavePlayers> get copyWith => _$SavePlayersCopyWithImpl<SavePlayers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SavePlayers&&const DeepCollectionEquality().equals(other._players, _players));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_players));

@override
String toString() {
  return 'GameEvent.savePlayers(players: $players)';
}


}

/// @nodoc
abstract mixin class $SavePlayersCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $SavePlayersCopyWith(SavePlayers value, $Res Function(SavePlayers) _then) = _$SavePlayersCopyWithImpl;
@useResult
$Res call({
 List<String> players
});




}
/// @nodoc
class _$SavePlayersCopyWithImpl<$Res>
    implements $SavePlayersCopyWith<$Res> {
  _$SavePlayersCopyWithImpl(this._self, this._then);

  final SavePlayers _self;
  final $Res Function(SavePlayers) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? players = null,}) {
  return _then(SavePlayers(
null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class ToggleCategory implements GameEvent {
  const ToggleCategory(this.index, this.isSelected);
  

 final  int index;
 final  bool isSelected;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ToggleCategoryCopyWith<ToggleCategory> get copyWith => _$ToggleCategoryCopyWithImpl<ToggleCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ToggleCategory&&(identical(other.index, index) || other.index == index)&&(identical(other.isSelected, isSelected) || other.isSelected == isSelected));
}


@override
int get hashCode => Object.hash(runtimeType,index,isSelected);

@override
String toString() {
  return 'GameEvent.toggleCategory(index: $index, isSelected: $isSelected)';
}


}

/// @nodoc
abstract mixin class $ToggleCategoryCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $ToggleCategoryCopyWith(ToggleCategory value, $Res Function(ToggleCategory) _then) = _$ToggleCategoryCopyWithImpl;
@useResult
$Res call({
 int index, bool isSelected
});




}
/// @nodoc
class _$ToggleCategoryCopyWithImpl<$Res>
    implements $ToggleCategoryCopyWith<$Res> {
  _$ToggleCategoryCopyWithImpl(this._self, this._then);

  final ToggleCategory _self;
  final $Res Function(ToggleCategory) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? index = null,Object? isSelected = null,}) {
  return _then(ToggleCategory(
null == index ? _self.index : index // ignore: cast_nullable_to_non_nullable
as int,null == isSelected ? _self.isSelected : isSelected // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class StartPlaying implements GameEvent {
  const StartPlaying();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StartPlaying);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.startPlaying()';
}


}




/// @nodoc


class AnswerWord implements GameEvent {
  const AnswerWord(this.isCorrect);
  

 final  bool isCorrect;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AnswerWordCopyWith<AnswerWord> get copyWith => _$AnswerWordCopyWithImpl<AnswerWord>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AnswerWord&&(identical(other.isCorrect, isCorrect) || other.isCorrect == isCorrect));
}


@override
int get hashCode => Object.hash(runtimeType,isCorrect);

@override
String toString() {
  return 'GameEvent.answerWord(isCorrect: $isCorrect)';
}


}

/// @nodoc
abstract mixin class $AnswerWordCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $AnswerWordCopyWith(AnswerWord value, $Res Function(AnswerWord) _then) = _$AnswerWordCopyWithImpl;
@useResult
$Res call({
 bool isCorrect
});




}
/// @nodoc
class _$AnswerWordCopyWithImpl<$Res>
    implements $AnswerWordCopyWith<$Res> {
  _$AnswerWordCopyWithImpl(this._self, this._then);

  final AnswerWord _self;
  final $Res Function(AnswerWord) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isCorrect = null,}) {
  return _then(AnswerWord(
null == isCorrect ? _self.isCorrect : isCorrect // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class ResetGame implements GameEvent {
  const ResetGame();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetGame);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.resetGame()';
}


}




/// @nodoc


class LoadHighscores implements GameEvent {
  const LoadHighscores();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadHighscores);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.loadHighscores()';
}


}




/// @nodoc


class SaveCurrentScore implements GameEvent {
  const SaveCurrentScore();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaveCurrentScore);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GameEvent.saveCurrentScore()';
}


}




/// @nodoc


class UpdateConfigs implements GameEvent {
  const UpdateConfigs({this.countdownTime, this.gameDuration});
  

 final  CountdownTime? countdownTime;
 final  GameDuration? gameDuration;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateConfigsCopyWith<UpdateConfigs> get copyWith => _$UpdateConfigsCopyWithImpl<UpdateConfigs>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateConfigs&&(identical(other.countdownTime, countdownTime) || other.countdownTime == countdownTime)&&(identical(other.gameDuration, gameDuration) || other.gameDuration == gameDuration));
}


@override
int get hashCode => Object.hash(runtimeType,countdownTime,gameDuration);

@override
String toString() {
  return 'GameEvent.updateConfigs(countdownTime: $countdownTime, gameDuration: $gameDuration)';
}


}

/// @nodoc
abstract mixin class $UpdateConfigsCopyWith<$Res> implements $GameEventCopyWith<$Res> {
  factory $UpdateConfigsCopyWith(UpdateConfigs value, $Res Function(UpdateConfigs) _then) = _$UpdateConfigsCopyWithImpl;
@useResult
$Res call({
 CountdownTime? countdownTime, GameDuration? gameDuration
});




}
/// @nodoc
class _$UpdateConfigsCopyWithImpl<$Res>
    implements $UpdateConfigsCopyWith<$Res> {
  _$UpdateConfigsCopyWithImpl(this._self, this._then);

  final UpdateConfigs _self;
  final $Res Function(UpdateConfigs) _then;

/// Create a copy of GameEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? countdownTime = freezed,Object? gameDuration = freezed,}) {
  return _then(UpdateConfigs(
countdownTime: freezed == countdownTime ? _self.countdownTime : countdownTime // ignore: cast_nullable_to_non_nullable
as CountdownTime?,gameDuration: freezed == gameDuration ? _self.gameDuration : gameDuration // ignore: cast_nullable_to_non_nullable
as GameDuration?,
  ));
}


}

/// @nodoc
mixin _$GameState {

 List<String> get players; List<Category> get categories; List<String> get gameWords; int get currentWordIndex; int get score; List<String> get highscores; CountdownTime get countdownTime; GameDuration get gameDuration;
/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GameStateCopyWith<GameState> get copyWith => _$GameStateCopyWithImpl<GameState>(this as GameState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GameState&&const DeepCollectionEquality().equals(other.players, players)&&const DeepCollectionEquality().equals(other.categories, categories)&&const DeepCollectionEquality().equals(other.gameWords, gameWords)&&(identical(other.currentWordIndex, currentWordIndex) || other.currentWordIndex == currentWordIndex)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other.highscores, highscores)&&(identical(other.countdownTime, countdownTime) || other.countdownTime == countdownTime)&&(identical(other.gameDuration, gameDuration) || other.gameDuration == gameDuration));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(players),const DeepCollectionEquality().hash(categories),const DeepCollectionEquality().hash(gameWords),currentWordIndex,score,const DeepCollectionEquality().hash(highscores),countdownTime,gameDuration);

@override
String toString() {
  return 'GameState(players: $players, categories: $categories, gameWords: $gameWords, currentWordIndex: $currentWordIndex, score: $score, highscores: $highscores, countdownTime: $countdownTime, gameDuration: $gameDuration)';
}


}

/// @nodoc
abstract mixin class $GameStateCopyWith<$Res>  {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) _then) = _$GameStateCopyWithImpl;
@useResult
$Res call({
 List<String> players, List<Category> categories, List<String> gameWords, int currentWordIndex, int score, List<String> highscores, CountdownTime countdownTime, GameDuration gameDuration
});




}
/// @nodoc
class _$GameStateCopyWithImpl<$Res>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._self, this._then);

  final GameState _self;
  final $Res Function(GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? players = null,Object? categories = null,Object? gameWords = null,Object? currentWordIndex = null,Object? score = null,Object? highscores = null,Object? countdownTime = null,Object? gameDuration = null,}) {
  return _then(_self.copyWith(
players: null == players ? _self.players : players // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,gameWords: null == gameWords ? _self.gameWords : gameWords // ignore: cast_nullable_to_non_nullable
as List<String>,currentWordIndex: null == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,highscores: null == highscores ? _self.highscores : highscores // ignore: cast_nullable_to_non_nullable
as List<String>,countdownTime: null == countdownTime ? _self.countdownTime : countdownTime // ignore: cast_nullable_to_non_nullable
as CountdownTime,gameDuration: null == gameDuration ? _self.gameDuration : gameDuration // ignore: cast_nullable_to_non_nullable
as GameDuration,
  ));
}

}


/// Adds pattern-matching-related methods to [GameState].
extension GameStatePatterns on GameState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GameState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GameState value)  $default,){
final _that = this;
switch (_that) {
case _GameState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GameState value)?  $default,){
final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<String> players,  List<Category> categories,  List<String> gameWords,  int currentWordIndex,  int score,  List<String> highscores,  CountdownTime countdownTime,  GameDuration gameDuration)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.players,_that.categories,_that.gameWords,_that.currentWordIndex,_that.score,_that.highscores,_that.countdownTime,_that.gameDuration);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<String> players,  List<Category> categories,  List<String> gameWords,  int currentWordIndex,  int score,  List<String> highscores,  CountdownTime countdownTime,  GameDuration gameDuration)  $default,) {final _that = this;
switch (_that) {
case _GameState():
return $default(_that.players,_that.categories,_that.gameWords,_that.currentWordIndex,_that.score,_that.highscores,_that.countdownTime,_that.gameDuration);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<String> players,  List<Category> categories,  List<String> gameWords,  int currentWordIndex,  int score,  List<String> highscores,  CountdownTime countdownTime,  GameDuration gameDuration)?  $default,) {final _that = this;
switch (_that) {
case _GameState() when $default != null:
return $default(_that.players,_that.categories,_that.gameWords,_that.currentWordIndex,_that.score,_that.highscores,_that.countdownTime,_that.gameDuration);case _:
  return null;

}
}

}

/// @nodoc


class _GameState implements GameState {
  const _GameState({final  List<String> players = const [], final  List<Category> categories = const [], final  List<String> gameWords = const [], this.currentWordIndex = 0, this.score = 0, final  List<String> highscores = const [], this.countdownTime = CountdownTime.threeSeconds, this.gameDuration = GameDuration.thirtySeconds}): _players = players,_categories = categories,_gameWords = gameWords,_highscores = highscores;
  

 final  List<String> _players;
@override@JsonKey() List<String> get players {
  if (_players is EqualUnmodifiableListView) return _players;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_players);
}

 final  List<Category> _categories;
@override@JsonKey() List<Category> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<String> _gameWords;
@override@JsonKey() List<String> get gameWords {
  if (_gameWords is EqualUnmodifiableListView) return _gameWords;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gameWords);
}

@override@JsonKey() final  int currentWordIndex;
@override@JsonKey() final  int score;
 final  List<String> _highscores;
@override@JsonKey() List<String> get highscores {
  if (_highscores is EqualUnmodifiableListView) return _highscores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_highscores);
}

@override@JsonKey() final  CountdownTime countdownTime;
@override@JsonKey() final  GameDuration gameDuration;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GameStateCopyWith<_GameState> get copyWith => __$GameStateCopyWithImpl<_GameState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GameState&&const DeepCollectionEquality().equals(other._players, _players)&&const DeepCollectionEquality().equals(other._categories, _categories)&&const DeepCollectionEquality().equals(other._gameWords, _gameWords)&&(identical(other.currentWordIndex, currentWordIndex) || other.currentWordIndex == currentWordIndex)&&(identical(other.score, score) || other.score == score)&&const DeepCollectionEquality().equals(other._highscores, _highscores)&&(identical(other.countdownTime, countdownTime) || other.countdownTime == countdownTime)&&(identical(other.gameDuration, gameDuration) || other.gameDuration == gameDuration));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_players),const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_gameWords),currentWordIndex,score,const DeepCollectionEquality().hash(_highscores),countdownTime,gameDuration);

@override
String toString() {
  return 'GameState(players: $players, categories: $categories, gameWords: $gameWords, currentWordIndex: $currentWordIndex, score: $score, highscores: $highscores, countdownTime: $countdownTime, gameDuration: $gameDuration)';
}


}

/// @nodoc
abstract mixin class _$GameStateCopyWith<$Res> implements $GameStateCopyWith<$Res> {
  factory _$GameStateCopyWith(_GameState value, $Res Function(_GameState) _then) = __$GameStateCopyWithImpl;
@override @useResult
$Res call({
 List<String> players, List<Category> categories, List<String> gameWords, int currentWordIndex, int score, List<String> highscores, CountdownTime countdownTime, GameDuration gameDuration
});




}
/// @nodoc
class __$GameStateCopyWithImpl<$Res>
    implements _$GameStateCopyWith<$Res> {
  __$GameStateCopyWithImpl(this._self, this._then);

  final _GameState _self;
  final $Res Function(_GameState) _then;

/// Create a copy of GameState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? players = null,Object? categories = null,Object? gameWords = null,Object? currentWordIndex = null,Object? score = null,Object? highscores = null,Object? countdownTime = null,Object? gameDuration = null,}) {
  return _then(_GameState(
players: null == players ? _self._players : players // ignore: cast_nullable_to_non_nullable
as List<String>,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<Category>,gameWords: null == gameWords ? _self._gameWords : gameWords // ignore: cast_nullable_to_non_nullable
as List<String>,currentWordIndex: null == currentWordIndex ? _self.currentWordIndex : currentWordIndex // ignore: cast_nullable_to_non_nullable
as int,score: null == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as int,highscores: null == highscores ? _self._highscores : highscores // ignore: cast_nullable_to_non_nullable
as List<String>,countdownTime: null == countdownTime ? _self.countdownTime : countdownTime // ignore: cast_nullable_to_non_nullable
as CountdownTime,gameDuration: null == gameDuration ? _self.gameDuration : gameDuration // ignore: cast_nullable_to_non_nullable
as GameDuration,
  ));
}


}

// dart format on
