import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_up_goal/Pages/main_page.dart';
import 'package:push_up_goal/cubit/push_up_counter/push_up_counter_cubit.dart';

class StreakPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.all(10),
      child: BlocBuilder<PushUpCounterCubit, PushUpCounterState>(
        builder: (context, state) {
          if (state.streakCount >= 0) {
            return Column(
              children: [
                Text(
                  "CURRENT STREAK",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  "${state.streakCount} days 🔥",
                  style: TextStyle(fontSize: 21),
                )
              ],
            );
          } else {
            return Text("empty");
          }
        },
      ),
    );
  }
}
