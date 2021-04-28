import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

class DailyPushUps {
  DateTime date;
  int pushUpDone;
  bool goalMet;

  DailyPushUps(this.date, this.pushUpDone, this.goalMet);

  static DailyPushUps fromJson(Map json) {
    return DailyPushUps(
      DateTime.parse(json["date"]),
      json["pushUpDone"] as int,
      json["goalMet"] == 1,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      "date": date.toIso8601String(),
      "pushUpDone": pushUpDone,
      "goalMet": goalMet ? 1 : 0,
    };
  }
}
