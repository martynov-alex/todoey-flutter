import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class AppProvider extends ChangeNotifier {
  List<Task> _tasksList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
  ];
  // UnmodifiableListView - дает доступ к содержимому, но не мозволяет никак
  // его модифицировать
  UnmodifiableListView<Task> get tasksList => UnmodifiableListView(_tasksList);
  int get tasksCounter => _tasksList.length;

  void addTask(String taskText) {
    _tasksList.add(Task(name: taskText));
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasksList.remove(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}
