import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) toggleCheckbox;
  final Function()? longPressCallback;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.toggleCheckbox,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 16,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightGreen,
        hoverColor: Colors.greenAccent,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
