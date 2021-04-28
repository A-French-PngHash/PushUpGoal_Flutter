import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:push_up_goal/data/push_up_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'push_up_counter_state.dart';
part 'push_up_counter_cubit.freezed.dart';

class PushUpCounterCubit extends Cubit<PushUpCounterState> {
  final PushUpRepository _pushUpRepository;

  PushUpCounterCubit(this._pushUpRepository)
      : super(PushUpCounterState.initial()) {}

  void loadState() async {
    emit(await this._getState());
  }

  void incrementPushUp(int by) async {
    await this._pushUpRepository.incrementCount(by);
    emit(await _getState());
  }

  Future<PushUpCounterState> _getState() async {
    final today = await this._pushUpRepository.today;

    final count = today.pushUpDone;
    final goal = this._pushUpRepository.goal;
    final streak = await this._pushUpRepository.streakCount();
    return PushUpCounterState(
      count,
      _calculateNewColor(count, goal),
      this._pushUpRepository.goal,
      streak,
    );
  }

  /// Calculate the new counter color
  ///
  /// The color changes gradually as the counter increases towars the maximum.
  Color _calculateNewColor(int count, int goal) {
    double goalCompletion = count / goal;
    if (goalCompletion > 1) {
      goalCompletion = 1;
    }

    return Color.alphaBlend(
      Colors.lightGreen.withAlpha((goalCompletion * 255).floor()),
      Colors.red,
    );
  }
}
