part of 'push_up_counter_cubit.dart';


@freezed
class PushUpCounterState with _$PushUpCounterState {
  factory PushUpCounterState(int value, Color color, int goal, int streakCount) = _PushUpCounterState;
  factory PushUpCounterState.initial([
    @Default(0) int value,
    @Default(Colors.black) Color color,
    @Default(0) int goal,
    @Default(0) int streakCount
  ]) = _PushUpCounterStateInitial;
}
