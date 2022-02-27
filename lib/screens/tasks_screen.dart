import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/screens/add_task_screen.dart';
import 'package:todoey/models/task.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  // Widget buildBottomSheet(BuildContext context) => Container();
  List<Task> tasksList = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy bread'),
    Task(name: 'Buy eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 5, bottom: 5),
                alignment: Alignment.bottomLeft,
                child: const CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.playlist_add_check_circle_outlined,
                    size: 70,
                    color: Colors.lightGreen,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 120,
              child: Container(
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 5, bottom: 5),
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Todoey',
                      style: TextStyle(
                          fontFamily: 'Comfortaa',
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text('${tasksList.length} Tasks',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: TasksList(tasks: tasksList),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            builder: (context) => AddTaskScreen(
              addTaskCallBack: (newTaskTitle) {
                setState(() {
                  tasksList.add(Task(name: newTaskTitle));
                });
                Navigator.pop(context);
              },
            ),
          );
        },
        tooltip: 'Add task',
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
