import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/screens/add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppProvider tasksData = Provider.of<AppProvider>(context);
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
                    Text('${tasksData.tasksCounter} Tasks',
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
                child: TasksList(),
              ),
            ),
            Container(
              height: 80,
              color: Colors.white,
            )
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
            builder: (context) => AddTaskScreen(),
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
