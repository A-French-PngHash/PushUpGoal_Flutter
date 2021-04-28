// @dart = 2.9

import 'package:flutter/foundation.dart';
import 'package:libcalendar/libcalendar.dart';
import 'package:push_up_goal/cubit/push_up_counter/push_up_counter_cubit.dart';
import 'package:push_up_goal/data/Database/push_up_database.dart';
import 'package:push_up_goal/data/Model/daily_push_ups.dart';

class PushUpRepository {
  int goal = 60;

  Future<void> incrementCount(int by) async {
    final DailyPushUps td = await today;
    td.pushUpDone += by;
    td.goalMet = td.pushUpDone >= goal;
    await _setToday(td);
  }

  Future<int> fetchCurrentCount() async {
    final DailyPushUps td = await today;
    return td.pushUpDone;
  }

  Future<DailyPushUps> get today async {
    PushUpDatabase db = PushUpDatabase.shared;
    final todayDate = _todaysDate();
    var _today = await db.getData(todayDate.toIso8601String());
    if (_today != null) {
      return _today;
    } else {
      // No object for today yet.
      await _createTodaysObject();
      _today = await db.getData(todayDate.toIso8601String());
      if (today == null) {
        throw ("Unable to create today's data object.");
      }
      return _today;
    }
  }

  _setToday(DailyPushUps value) async {
    PushUpDatabase db = PushUpDatabase.shared;
    await db.updateData(value);
  }

  Future<void> _createTodaysObject() async {
    PushUpDatabase db = PushUpDatabase.shared;
    await db.newData(DailyPushUps(
      _todaysDate(),
      0,
      goal == 0,
    ));
  }

  DateTime _todaysDate() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(now.year, now.month, now.day);
    return date;
  }

  /// Calculates and return the streak count.
  ///
  /// Streaks are days in a serie. It represents the number of consecutive days
  /// where the user met its daily push up goals.
  Future<int> streakCount() async {
    // Number of consecutive day so far.
    var currentCount = 1;
    PushUpDatabase db = PushUpDatabase.shared;

    while (true) {
      DateTime date = _todaysDate().subtract(Duration(days: currentCount));
      date = new DateTime(date.year, date.month, date.day);

      final dataThatDay = await db.getData(date.toIso8601String());
      if (dataThatDay != null && dataThatDay.goalMet) {
        currentCount += 1;
      } else {
        break;
      }
    }
    return currentCount - 1;
  }
}
