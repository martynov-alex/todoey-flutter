import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  const TasksList({Key? key}) : super(key: key);

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}
