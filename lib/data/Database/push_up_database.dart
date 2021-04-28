import 'dart:async';

import 'package:path/path.dart';
import 'package:push_up_goal/data/Model/daily_push_ups.dart';
import 'package:sqflite/sqflite.dart';

class PushUpDatabase {
  // Singleton
  PushUpDatabase._();
  static final PushUpDatabase shared = PushUpDatabase._();

  Database? _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    // if _database is null we instantiate it
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    String documentsDirectory = await getDatabasesPath();
    String path = join(documentsDirectory, "push_up_database.db");
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {},
      onCreate: (Database db, int version) async {
        await db.execute(
            "CREATE TABLE pushUps(date TEXT PRIMARY KEY, pushUpDone SMALLINT, goalMet BOOLEAN)");
      },
    );
  }

  Future<DailyPushUps?> getData(String date) async {
    final Database db = await this.database;
    var res = await db.query("pushUps", where: "date = ?", whereArgs: [date]);
    if (res.isEmpty) {
      return null;
    }
    var data = res.first;
    return DailyPushUps.fromJson(data);
  }

  Future<void> newData(DailyPushUps newData) async {
    final Database db = await this.database;
    await db.insert(
      "pushUps",
      newData.toJson(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  updateData(DailyPushUps newData) async {
    final Database db = await database;
    db.update(
      "pushUps",
      newData.toJson(),
      where: "date = ?",
      whereArgs: [newData.date.toIso8601String()],
    );
  }
}
