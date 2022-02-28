import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(
      builder: (context, tasksData, child) {
        return ListView.builder(
          itemCount: tasksData.tasksCounter,
          itemBuilder: (BuildContext context, int index) {
            final task = tasksData.tasksList[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              toggleCheckbox: (checkboxState) => tasksData.updateTask(task),
              longPressCallback: () => tasksData.deleteTask(task),
            );
          },
        );
      },
    );
  }
}
