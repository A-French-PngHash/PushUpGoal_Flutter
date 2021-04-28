import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:push_up_goal/Pages/counter_page.dart';
import 'package:push_up_goal/Pages/streak_page.dart';
import 'package:push_up_goal/cubit/push_up_counter/push_up_counter_cubit.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPage createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  // Value present in the text field.
  String incrementValueString = "+20";
  // Number parsed from the text field once the editing is finished.
  int incrementValue = 20;
  bool isEditingPushUpIncrement = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: buildMainColumn(),
      ),
    );
  }

  Widget buildMainColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Spacer(),
        CounterPage(),
        Spacer(),
        buildAddPushUpRow(),
        Padding(
          padding: EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              final pushUpCubit = context.read<PushUpCounterCubit>();
              pushUpCubit.incrementPushUp(this.incrementValue);
            },
            child: Icon(
              Icons.add,
              size: 70,
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(left: 20, right: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
        ),
        Spacer(),
        StreakPage(),
      ],
    );
  }

  /// Return the row that says "add +x push ups"
  ///
  /// This row is complex because it can be edited. By pressing a button at the
  /// end of the row, the user can edit the x value (a text field appears). It
  /// can then save the new value by pressing the same button (which icon's
  /// changed).
  Widget buildAddPushUpRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultTextStyle(
          style: TextStyle(fontSize: 20, color: Colors.black),
          child: isEditingPushUpIncrement
              ? Row(
                  children: [
                    Text("Add "),
                    Container(
                      width: 40,
                      child: TextField(
                        controller: TextEditingController()
                          ..text = this.incrementValueString,
                        onChanged: (value) {
                          this.incrementValueString = value;
                        },
                        onSubmitted: (value) {
                          parseIncrementValue();
                        },
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    Text(" push ups")
                  ],
                )
              : Text("Add +" + this.incrementValue.toString() + " push ups"),
        ),
        IconButton(
          icon: this.isEditingPushUpIncrement
              ? Icon(Icons.save)
              : Icon(Icons.edit),
          onPressed: () {
            print("pressed");
            setState(() {
              isEditingPushUpIncrement = !isEditingPushUpIncrement;
              parseIncrementValue();
            });
          },
        ),
      ],
    );
  }

  /// Parse the incrementValueString into the incrementValue.
  ///
  /// Once the user finished inputting its value into the text field, the
  /// integer is parsed from the string. If the string can't be parsed then the
  /// integer stays the same.
  void parseIncrementValue() {
    final newValue = int.tryParse(this.incrementValueString);
    if (newValue != null) {
      this.incrementValue = newValue;
    }
  }
}
