import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_up_goal/Pages/main_page.dart';
import 'package:push_up_goal/cubit/push_up_counter/push_up_counter_cubit.dart';
import 'package:push_up_goal/data/push_up_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Up',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: BlocProvider(
        create: (context) => PushUpCounterCubit(PushUpRepository())..loadState(),
        child: MainPage(),
      ),
    );
  }
}
