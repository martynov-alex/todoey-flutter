import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          const TextField(
            autofocus: true,
            minLines: 1,
            maxLines: 3,
            textCapitalization: TextCapitalization.sentences,
            keyboardType: TextInputType.text,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
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
