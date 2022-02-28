import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppProvider tasksData = Provider.of<AppProvider>(context);
    String taskText = '';
    return Container(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      margin: const EdgeInsets.only(top: 20, bottom: 20, left: 40, right: 40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 25, color: Colors.lightGreen),
          ),
          TextField(
            autofocus: true,
            minLines: 1,
            maxLines: 3,
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              taskText = value;
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              tasksData.addTask(taskText);
              Navigator.pop(context);
            },
            child: const Text(
              'Add',
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.lightGreen,
              onPrimary: Colors.white,
              textStyle: const TextStyle(fontSize: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ],
      ),
    );
  }
}
