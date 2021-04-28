import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_up_goal/cubit/push_up_counter/push_up_counter_cubit.dart';

class CounterPage extends StatefulWidget {
  @override
  _CounterPage createState() => _CounterPage();
}

class _CounterPage extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: BlocConsumer<PushUpCounterCubit, PushUpCounterState>(
        builder: (context, state) {
          if (state is PushUpCounterState) {
            return buildCounterWidget(state);
          } else {
            return Text("Unknow state (PushUpCounter)");
          }
        },
        listener: (context, state) {
          print("New state : " + state.toString());
        },
      ),
    );
  }

  Widget buildCounterWidget(PushUpCounterState state) {
    return DefaultTextStyle(
      style: TextStyle(fontSize: 70, color: state.color),
      child: Column(
        children: [
          Text(state.value.toString()),
          buildFractionBar(),
          Text(state.goal.toString())
        ],
      ),
    );
  }

  Widget buildFractionBar() {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          width: constraints.maxWidth * 0.5,
          height: 3,
        );
      },
    );
  }
}
