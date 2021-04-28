// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'push_up_counter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PushUpCounterStateTearOff {
  const _$PushUpCounterStateTearOff();

  _PushUpCounterState call(int value, Color color, int goal, int streakCount) {
    return _PushUpCounterState(
      value,
      color,
      goal,
      streakCount,
    );
  }

  _PushUpCounterStateInitial initial(
      [int value = 0,
      Color color = Colors.black,
      int goal = 0,
      int streakCount = 0]) {
    return _PushUpCounterStateInitial(
      value,
      color,
      goal,
      streakCount,
    );
  }
}

/// @nodoc
const $PushUpCounterState = _$PushUpCounterStateTearOff();

/// @nodoc
mixin _$PushUpCounterState {
  int get value => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  int get goal => throw _privateConstructorUsedError;
  int get streakCount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int value, Color color, int goal, int streakCount)
        $default, {
    required TResult Function(int value, Color color, int goal, int streakCount)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int value, Color color, int goal, int streakCount)?
        $default, {
    TResult Function(int value, Color color, int goal, int streakCount)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PushUpCounterState value) $default, {
    required TResult Function(_PushUpCounterStateInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PushUpCounterState value)? $default, {
    TResult Function(_PushUpCounterStateInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PushUpCounterStateCopyWith<PushUpCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushUpCounterStateCopyWith<$Res> {
  factory $PushUpCounterStateCopyWith(
          PushUpCounterState value, $Res Function(PushUpCounterState) then) =
      _$PushUpCounterStateCopyWithImpl<$Res>;
  $Res call({int value, Color color, int goal, int streakCount});
}

/// @nodoc
class _$PushUpCounterStateCopyWithImpl<$Res>
    implements $PushUpCounterStateCopyWith<$Res> {
  _$PushUpCounterStateCopyWithImpl(this._value, this._then);

  final PushUpCounterState _value;
  // ignore: unused_field
  final $Res Function(PushUpCounterState) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? color = freezed,
    Object? goal = freezed,
    Object? streakCount = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      goal: goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as int,
      streakCount: streakCount == freezed
          ? _value.streakCount
          : streakCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PushUpCounterStateCopyWith<$Res>
    implements $PushUpCounterStateCopyWith<$Res> {
  factory _$PushUpCounterStateCopyWith(
          _PushUpCounterState value, $Res Function(_PushUpCounterState) then) =
      __$PushUpCounterStateCopyWithImpl<$Res>;
  @override
  $Res call({int value, Color color, int goal, int streakCount});
}

/// @nodoc
class __$PushUpCounterStateCopyWithImpl<$Res>
    extends _$PushUpCounterStateCopyWithImpl<$Res>
    implements _$PushUpCounterStateCopyWith<$Res> {
  __$PushUpCounterStateCopyWithImpl(
      _PushUpCounterState _value, $Res Function(_PushUpCounterState) _then)
      : super(_value, (v) => _then(v as _PushUpCounterState));

  @override
  _PushUpCounterState get _value => super._value as _PushUpCounterState;

  @override
  $Res call({
    Object? value = freezed,
    Object? color = freezed,
    Object? goal = freezed,
    Object? streakCount = freezed,
  }) {
    return _then(_PushUpCounterState(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as int,
      streakCount == freezed
          ? _value.streakCount
          : streakCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_PushUpCounterState implements _PushUpCounterState {
  _$_PushUpCounterState(this.value, this.color, this.goal, this.streakCount);

  @override
  final int value;
  @override
  final Color color;
  @override
  final int goal;
  @override
  final int streakCount;

  @override
  String toString() {
    return 'PushUpCounterState(value: $value, color: $color, goal: $goal, streakCount: $streakCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushUpCounterState &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.streakCount, streakCount) ||
                const DeepCollectionEquality()
                    .equals(other.streakCount, streakCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(streakCount);

  @JsonKey(ignore: true)
  @override
  _$PushUpCounterStateCopyWith<_PushUpCounterState> get copyWith =>
      __$PushUpCounterStateCopyWithImpl<_PushUpCounterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int value, Color color, int goal, int streakCount)
        $default, {
    required TResult Function(int value, Color color, int goal, int streakCount)
        initial,
  }) {
    return $default(value, color, goal, streakCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int value, Color color, int goal, int streakCount)?
        $default, {
    TResult Function(int value, Color color, int goal, int streakCount)?
        initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value, color, goal, streakCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PushUpCounterState value) $default, {
    required TResult Function(_PushUpCounterStateInitial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PushUpCounterState value)? $default, {
    TResult Function(_PushUpCounterStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _PushUpCounterState implements PushUpCounterState {
  factory _PushUpCounterState(
          int value, Color color, int goal, int streakCount) =
      _$_PushUpCounterState;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  int get goal => throw _privateConstructorUsedError;
  @override
  int get streakCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushUpCounterStateCopyWith<_PushUpCounterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PushUpCounterStateInitialCopyWith<$Res>
    implements $PushUpCounterStateCopyWith<$Res> {
  factory _$PushUpCounterStateInitialCopyWith(_PushUpCounterStateInitial value,
          $Res Function(_PushUpCounterStateInitial) then) =
      __$PushUpCounterStateInitialCopyWithImpl<$Res>;
  @override
  $Res call({int value, Color color, int goal, int streakCount});
}

/// @nodoc
class __$PushUpCounterStateInitialCopyWithImpl<$Res>
    extends _$PushUpCounterStateCopyWithImpl<$Res>
    implements _$PushUpCounterStateInitialCopyWith<$Res> {
  __$PushUpCounterStateInitialCopyWithImpl(_PushUpCounterStateInitial _value,
      $Res Function(_PushUpCounterStateInitial) _then)
      : super(_value, (v) => _then(v as _PushUpCounterStateInitial));

  @override
  _PushUpCounterStateInitial get _value =>
      super._value as _PushUpCounterStateInitial;

  @override
  $Res call({
    Object? value = freezed,
    Object? color = freezed,
    Object? goal = freezed,
    Object? streakCount = freezed,
  }) {
    return _then(_PushUpCounterStateInitial(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      goal == freezed
          ? _value.goal
          : goal // ignore: cast_nullable_to_non_nullable
              as int,
      streakCount == freezed
          ? _value.streakCount
          : streakCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_PushUpCounterStateInitial implements _PushUpCounterStateInitial {
  _$_PushUpCounterStateInitial(
      [this.value = 0,
      this.color = Colors.black,
      this.goal = 0,
      this.streakCount = 0]);

  @JsonKey(defaultValue: 0)
  @override
  final int value;
  @JsonKey(defaultValue: Colors.black)
  @override
  final Color color;
  @JsonKey(defaultValue: 0)
  @override
  final int goal;
  @JsonKey(defaultValue: 0)
  @override
  final int streakCount;

  @override
  String toString() {
    return 'PushUpCounterState.initial(value: $value, color: $color, goal: $goal, streakCount: $streakCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushUpCounterStateInitial &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)) &&
            (identical(other.goal, goal) ||
                const DeepCollectionEquality().equals(other.goal, goal)) &&
            (identical(other.streakCount, streakCount) ||
                const DeepCollectionEquality()
                    .equals(other.streakCount, streakCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(color) ^
      const DeepCollectionEquality().hash(goal) ^
      const DeepCollectionEquality().hash(streakCount);

  @JsonKey(ignore: true)
  @override
  _$PushUpCounterStateInitialCopyWith<_PushUpCounterStateInitial>
      get copyWith =>
          __$PushUpCounterStateInitialCopyWithImpl<_PushUpCounterStateInitial>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int value, Color color, int goal, int streakCount)
        $default, {
    required TResult Function(int value, Color color, int goal, int streakCount)
        initial,
  }) {
    return initial(value, color, goal, streakCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int value, Color color, int goal, int streakCount)?
        $default, {
    TResult Function(int value, Color color, int goal, int streakCount)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(value, color, goal, streakCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PushUpCounterState value) $default, {
    required TResult Function(_PushUpCounterStateInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PushUpCounterState value)? $default, {
    TResult Function(_PushUpCounterStateInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _PushUpCounterStateInitial implements PushUpCounterState {
  factory _PushUpCounterStateInitial(
      [int value,
      Color color,
      int goal,
      int streakCount]) = _$_PushUpCounterStateInitial;

  @override
  int get value => throw _privateConstructorUsedError;
  @override
  Color get color => throw _privateConstructorUsedError;
  @override
  int get goal => throw _privateConstructorUsedError;
  @override
  int get streakCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushUpCounterStateInitialCopyWith<_PushUpCounterStateInitial>
      get copyWith => throw _privateConstructorUsedError;
}
