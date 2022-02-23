import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool? checkboxState) {
    setState(() {
      isChecked = checkboxState ?? false; // if checkboxState == null => false
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy milk Buy milkBuy milkBuy milkBuy milkBuy milkBuy',
        style: TextStyle(
            fontSize: 16,
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: checkboxCallback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function(bool?) toggleCheckboxState;
  TaskCheckbox(
      {required this.checkboxState, required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      activeColor: Colors.lightGreen,
      hoverColor: Colors.greenAccent,
      onChanged: toggleCheckboxState,
    );
  }
}
