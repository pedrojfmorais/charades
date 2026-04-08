// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$GameEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameEventCopyWith<$Res> {
  factory $GameEventCopyWith(GameEvent value, $Res Function(GameEvent) then) =
      _$GameEventCopyWithImpl<$Res, GameEvent>;
}

/// @nodoc
class _$GameEventCopyWithImpl<$Res, $Val extends GameEvent>
    implements $GameEventCopyWith<$Res> {
  _$GameEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SavePlayersImplCopyWith<$Res> {
  factory _$$SavePlayersImplCopyWith(
    _$SavePlayersImpl value,
    $Res Function(_$SavePlayersImpl) then,
  ) = __$$SavePlayersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> players});
}

/// @nodoc
class __$$SavePlayersImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SavePlayersImpl>
    implements _$$SavePlayersImplCopyWith<$Res> {
  __$$SavePlayersImplCopyWithImpl(
    _$SavePlayersImpl _value,
    $Res Function(_$SavePlayersImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? players = null}) {
    return _then(
      _$SavePlayersImpl(
        null == players
            ? _value._players
            : players // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$SavePlayersImpl implements SavePlayers {
  const _$SavePlayersImpl(final List<String> players) : _players = players;

  final List<String> _players;
  @override
  List<String> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  @override
  String toString() {
    return 'GameEvent.savePlayers(players: $players)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePlayersImpl &&
            const DeepCollectionEquality().equals(other._players, _players));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_players));

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePlayersImplCopyWith<_$SavePlayersImpl> get copyWith =>
      __$$SavePlayersImplCopyWithImpl<_$SavePlayersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) {
    return savePlayers(players);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) {
    return savePlayers?.call(players);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (savePlayers != null) {
      return savePlayers(players);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) {
    return savePlayers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) {
    return savePlayers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (savePlayers != null) {
      return savePlayers(this);
    }
    return orElse();
  }
}

abstract class SavePlayers implements GameEvent {
  const factory SavePlayers(final List<String> players) = _$SavePlayersImpl;

  List<String> get players;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SavePlayersImplCopyWith<_$SavePlayersImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleCategoryImplCopyWith<$Res> {
  factory _$$ToggleCategoryImplCopyWith(
    _$ToggleCategoryImpl value,
    $Res Function(_$ToggleCategoryImpl) then,
  ) = __$$ToggleCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index, bool isSelected});
}

/// @nodoc
class __$$ToggleCategoryImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ToggleCategoryImpl>
    implements _$$ToggleCategoryImplCopyWith<$Res> {
  __$$ToggleCategoryImplCopyWithImpl(
    _$ToggleCategoryImpl _value,
    $Res Function(_$ToggleCategoryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null, Object? isSelected = null}) {
    return _then(
      _$ToggleCategoryImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
        null == isSelected
            ? _value.isSelected
            : isSelected // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$ToggleCategoryImpl implements ToggleCategory {
  const _$ToggleCategoryImpl(this.index, this.isSelected);

  @override
  final int index;
  @override
  final bool isSelected;

  @override
  String toString() {
    return 'GameEvent.toggleCategory(index: $index, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleCategoryImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index, isSelected);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleCategoryImplCopyWith<_$ToggleCategoryImpl> get copyWith =>
      __$$ToggleCategoryImplCopyWithImpl<_$ToggleCategoryImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) {
    return toggleCategory(index, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) {
    return toggleCategory?.call(index, isSelected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (toggleCategory != null) {
      return toggleCategory(index, isSelected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) {
    return toggleCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) {
    return toggleCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (toggleCategory != null) {
      return toggleCategory(this);
    }
    return orElse();
  }
}

abstract class ToggleCategory implements GameEvent {
  const factory ToggleCategory(final int index, final bool isSelected) =
      _$ToggleCategoryImpl;

  int get index;
  bool get isSelected;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleCategoryImplCopyWith<_$ToggleCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartPlayingImplCopyWith<$Res> {
  factory _$$StartPlayingImplCopyWith(
    _$StartPlayingImpl value,
    $Res Function(_$StartPlayingImpl) then,
  ) = __$$StartPlayingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartPlayingImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$StartPlayingImpl>
    implements _$$StartPlayingImplCopyWith<$Res> {
  __$$StartPlayingImplCopyWithImpl(
    _$StartPlayingImpl _value,
    $Res Function(_$StartPlayingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartPlayingImpl implements StartPlaying {
  const _$StartPlayingImpl();

  @override
  String toString() {
    return 'GameEvent.startPlaying()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartPlayingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) {
    return startPlaying();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) {
    return startPlaying?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (startPlaying != null) {
      return startPlaying();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) {
    return startPlaying(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) {
    return startPlaying?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (startPlaying != null) {
      return startPlaying(this);
    }
    return orElse();
  }
}

abstract class StartPlaying implements GameEvent {
  const factory StartPlaying() = _$StartPlayingImpl;
}

/// @nodoc
abstract class _$$AnswerWordImplCopyWith<$Res> {
  factory _$$AnswerWordImplCopyWith(
    _$AnswerWordImpl value,
    $Res Function(_$AnswerWordImpl) then,
  ) = __$$AnswerWordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCorrect});
}

/// @nodoc
class __$$AnswerWordImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$AnswerWordImpl>
    implements _$$AnswerWordImplCopyWith<$Res> {
  __$$AnswerWordImplCopyWithImpl(
    _$AnswerWordImpl _value,
    $Res Function(_$AnswerWordImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isCorrect = null}) {
    return _then(
      _$AnswerWordImpl(
        null == isCorrect
            ? _value.isCorrect
            : isCorrect // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$AnswerWordImpl implements AnswerWord {
  const _$AnswerWordImpl(this.isCorrect);

  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'GameEvent.answerWord(isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnswerWordImpl &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCorrect);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnswerWordImplCopyWith<_$AnswerWordImpl> get copyWith =>
      __$$AnswerWordImplCopyWithImpl<_$AnswerWordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) {
    return answerWord(isCorrect);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) {
    return answerWord?.call(isCorrect);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (answerWord != null) {
      return answerWord(isCorrect);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) {
    return answerWord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) {
    return answerWord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (answerWord != null) {
      return answerWord(this);
    }
    return orElse();
  }
}

abstract class AnswerWord implements GameEvent {
  const factory AnswerWord(final bool isCorrect) = _$AnswerWordImpl;

  bool get isCorrect;

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnswerWordImplCopyWith<_$AnswerWordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetGameImplCopyWith<$Res> {
  factory _$$ResetGameImplCopyWith(
    _$ResetGameImpl value,
    $Res Function(_$ResetGameImpl) then,
  ) = __$$ResetGameImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetGameImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$ResetGameImpl>
    implements _$$ResetGameImplCopyWith<$Res> {
  __$$ResetGameImplCopyWithImpl(
    _$ResetGameImpl _value,
    $Res Function(_$ResetGameImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResetGameImpl implements ResetGame {
  const _$ResetGameImpl();

  @override
  String toString() {
    return 'GameEvent.resetGame()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetGameImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) {
    return resetGame();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) {
    return resetGame?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (resetGame != null) {
      return resetGame();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) {
    return resetGame(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) {
    return resetGame?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (resetGame != null) {
      return resetGame(this);
    }
    return orElse();
  }
}

abstract class ResetGame implements GameEvent {
  const factory ResetGame() = _$ResetGameImpl;
}

/// @nodoc
abstract class _$$LoadHighscoresImplCopyWith<$Res> {
  factory _$$LoadHighscoresImplCopyWith(
    _$LoadHighscoresImpl value,
    $Res Function(_$LoadHighscoresImpl) then,
  ) = __$$LoadHighscoresImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHighscoresImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$LoadHighscoresImpl>
    implements _$$LoadHighscoresImplCopyWith<$Res> {
  __$$LoadHighscoresImplCopyWithImpl(
    _$LoadHighscoresImpl _value,
    $Res Function(_$LoadHighscoresImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadHighscoresImpl implements LoadHighscores {
  const _$LoadHighscoresImpl();

  @override
  String toString() {
    return 'GameEvent.loadHighscores()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHighscoresImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) {
    return loadHighscores();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) {
    return loadHighscores?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (loadHighscores != null) {
      return loadHighscores();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) {
    return loadHighscores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) {
    return loadHighscores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (loadHighscores != null) {
      return loadHighscores(this);
    }
    return orElse();
  }
}

abstract class LoadHighscores implements GameEvent {
  const factory LoadHighscores() = _$LoadHighscoresImpl;
}

/// @nodoc
abstract class _$$SaveCurrentScoreImplCopyWith<$Res> {
  factory _$$SaveCurrentScoreImplCopyWith(
    _$SaveCurrentScoreImpl value,
    $Res Function(_$SaveCurrentScoreImpl) then,
  ) = __$$SaveCurrentScoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveCurrentScoreImplCopyWithImpl<$Res>
    extends _$GameEventCopyWithImpl<$Res, _$SaveCurrentScoreImpl>
    implements _$$SaveCurrentScoreImplCopyWith<$Res> {
  __$$SaveCurrentScoreImplCopyWithImpl(
    _$SaveCurrentScoreImpl _value,
    $Res Function(_$SaveCurrentScoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveCurrentScoreImpl implements SaveCurrentScore {
  const _$SaveCurrentScoreImpl();

  @override
  String toString() {
    return 'GameEvent.saveCurrentScore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveCurrentScoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> players) savePlayers,
    required TResult Function(int index, bool isSelected) toggleCategory,
    required TResult Function() startPlaying,
    required TResult Function(bool isCorrect) answerWord,
    required TResult Function() resetGame,
    required TResult Function() loadHighscores,
    required TResult Function() saveCurrentScore,
  }) {
    return saveCurrentScore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> players)? savePlayers,
    TResult? Function(int index, bool isSelected)? toggleCategory,
    TResult? Function()? startPlaying,
    TResult? Function(bool isCorrect)? answerWord,
    TResult? Function()? resetGame,
    TResult? Function()? loadHighscores,
    TResult? Function()? saveCurrentScore,
  }) {
    return saveCurrentScore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> players)? savePlayers,
    TResult Function(int index, bool isSelected)? toggleCategory,
    TResult Function()? startPlaying,
    TResult Function(bool isCorrect)? answerWord,
    TResult Function()? resetGame,
    TResult Function()? loadHighscores,
    TResult Function()? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (saveCurrentScore != null) {
      return saveCurrentScore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SavePlayers value) savePlayers,
    required TResult Function(ToggleCategory value) toggleCategory,
    required TResult Function(StartPlaying value) startPlaying,
    required TResult Function(AnswerWord value) answerWord,
    required TResult Function(ResetGame value) resetGame,
    required TResult Function(LoadHighscores value) loadHighscores,
    required TResult Function(SaveCurrentScore value) saveCurrentScore,
  }) {
    return saveCurrentScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SavePlayers value)? savePlayers,
    TResult? Function(ToggleCategory value)? toggleCategory,
    TResult? Function(StartPlaying value)? startPlaying,
    TResult? Function(AnswerWord value)? answerWord,
    TResult? Function(ResetGame value)? resetGame,
    TResult? Function(LoadHighscores value)? loadHighscores,
    TResult? Function(SaveCurrentScore value)? saveCurrentScore,
  }) {
    return saveCurrentScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SavePlayers value)? savePlayers,
    TResult Function(ToggleCategory value)? toggleCategory,
    TResult Function(StartPlaying value)? startPlaying,
    TResult Function(AnswerWord value)? answerWord,
    TResult Function(ResetGame value)? resetGame,
    TResult Function(LoadHighscores value)? loadHighscores,
    TResult Function(SaveCurrentScore value)? saveCurrentScore,
    required TResult orElse(),
  }) {
    if (saveCurrentScore != null) {
      return saveCurrentScore(this);
    }
    return orElse();
  }
}

abstract class SaveCurrentScore implements GameEvent {
  const factory SaveCurrentScore() = _$SaveCurrentScoreImpl;
}

/// @nodoc
mixin _$GameState {
  List<String> get players => throw _privateConstructorUsedError;
  List<Category> get categories => throw _privateConstructorUsedError;
  List<String> get gameWords => throw _privateConstructorUsedError;
  int get currentWordIndex => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  List<String> get highscores => throw _privateConstructorUsedError;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GameStateCopyWith<GameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameStateCopyWith<$Res> {
  factory $GameStateCopyWith(GameState value, $Res Function(GameState) then) =
      _$GameStateCopyWithImpl<$Res, GameState>;
  @useResult
  $Res call({
    List<String> players,
    List<Category> categories,
    List<String> gameWords,
    int currentWordIndex,
    int score,
    List<String> highscores,
  });
}

/// @nodoc
class _$GameStateCopyWithImpl<$Res, $Val extends GameState>
    implements $GameStateCopyWith<$Res> {
  _$GameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? categories = null,
    Object? gameWords = null,
    Object? currentWordIndex = null,
    Object? score = null,
    Object? highscores = null,
  }) {
    return _then(
      _value.copyWith(
            players: null == players
                ? _value.players
                : players // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            categories: null == categories
                ? _value.categories
                : categories // ignore: cast_nullable_to_non_nullable
                      as List<Category>,
            gameWords: null == gameWords
                ? _value.gameWords
                : gameWords // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            currentWordIndex: null == currentWordIndex
                ? _value.currentWordIndex
                : currentWordIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            score: null == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int,
            highscores: null == highscores
                ? _value.highscores
                : highscores // ignore: cast_nullable_to_non_nullable
                      as List<String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GameStateImplCopyWith<$Res>
    implements $GameStateCopyWith<$Res> {
  factory _$$GameStateImplCopyWith(
    _$GameStateImpl value,
    $Res Function(_$GameStateImpl) then,
  ) = __$$GameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<String> players,
    List<Category> categories,
    List<String> gameWords,
    int currentWordIndex,
    int score,
    List<String> highscores,
  });
}

/// @nodoc
class __$$GameStateImplCopyWithImpl<$Res>
    extends _$GameStateCopyWithImpl<$Res, _$GameStateImpl>
    implements _$$GameStateImplCopyWith<$Res> {
  __$$GameStateImplCopyWithImpl(
    _$GameStateImpl _value,
    $Res Function(_$GameStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? players = null,
    Object? categories = null,
    Object? gameWords = null,
    Object? currentWordIndex = null,
    Object? score = null,
    Object? highscores = null,
  }) {
    return _then(
      _$GameStateImpl(
        players: null == players
            ? _value._players
            : players // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        categories: null == categories
            ? _value._categories
            : categories // ignore: cast_nullable_to_non_nullable
                  as List<Category>,
        gameWords: null == gameWords
            ? _value._gameWords
            : gameWords // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        currentWordIndex: null == currentWordIndex
            ? _value.currentWordIndex
            : currentWordIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        score: null == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int,
        highscores: null == highscores
            ? _value._highscores
            : highscores // ignore: cast_nullable_to_non_nullable
                  as List<String>,
      ),
    );
  }
}

/// @nodoc

class _$GameStateImpl implements _GameState {
  const _$GameStateImpl({
    final List<String> players = const [],
    final List<Category> categories = const [],
    final List<String> gameWords = const [],
    this.currentWordIndex = 0,
    this.score = 0,
    final List<String> highscores = const [],
  }) : _players = players,
       _categories = categories,
       _gameWords = gameWords,
       _highscores = highscores;

  final List<String> _players;
  @override
  @JsonKey()
  List<String> get players {
    if (_players is EqualUnmodifiableListView) return _players;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_players);
  }

  final List<Category> _categories;
  @override
  @JsonKey()
  List<Category> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<String> _gameWords;
  @override
  @JsonKey()
  List<String> get gameWords {
    if (_gameWords is EqualUnmodifiableListView) return _gameWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gameWords);
  }

  @override
  @JsonKey()
  final int currentWordIndex;
  @override
  @JsonKey()
  final int score;
  final List<String> _highscores;
  @override
  @JsonKey()
  List<String> get highscores {
    if (_highscores is EqualUnmodifiableListView) return _highscores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_highscores);
  }

  @override
  String toString() {
    return 'GameState(players: $players, categories: $categories, gameWords: $gameWords, currentWordIndex: $currentWordIndex, score: $score, highscores: $highscores)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameStateImpl &&
            const DeepCollectionEquality().equals(other._players, _players) &&
            const DeepCollectionEquality().equals(
              other._categories,
              _categories,
            ) &&
            const DeepCollectionEquality().equals(
              other._gameWords,
              _gameWords,
            ) &&
            (identical(other.currentWordIndex, currentWordIndex) ||
                other.currentWordIndex == currentWordIndex) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(
              other._highscores,
              _highscores,
            ));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_players),
    const DeepCollectionEquality().hash(_categories),
    const DeepCollectionEquality().hash(_gameWords),
    currentWordIndex,
    score,
    const DeepCollectionEquality().hash(_highscores),
  );

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      __$$GameStateImplCopyWithImpl<_$GameStateImpl>(this, _$identity);
}

abstract class _GameState implements GameState {
  const factory _GameState({
    final List<String> players,
    final List<Category> categories,
    final List<String> gameWords,
    final int currentWordIndex,
    final int score,
    final List<String> highscores,
  }) = _$GameStateImpl;

  @override
  List<String> get players;
  @override
  List<Category> get categories;
  @override
  List<String> get gameWords;
  @override
  int get currentWordIndex;
  @override
  int get score;
  @override
  List<String> get highscores;

  /// Create a copy of GameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GameStateImplCopyWith<_$GameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
