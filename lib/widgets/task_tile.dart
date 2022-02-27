import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool?) toggleCheckbox;

  TaskTile(
      {required this.taskTitle,
      required this.isChecked,
      required this.toggleCheckbox});

  @override
  Widget build(BuildContext context) {
    return ListTile(
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
