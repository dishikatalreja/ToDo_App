import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';
import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({Key? key,
    required this.controller,
    required this.onSave,
    required this.onCancel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task"
              ),
            ),
           //buttons(save and cancel)
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: 'Save', onPressed: onSave),
              MyButton(text: 'Cancel', onPressed: onCancel)
            ],
           ) 
          ],
        ),
      ),
    );
  }
}
