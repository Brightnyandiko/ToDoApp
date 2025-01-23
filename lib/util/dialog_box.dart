import 'package:flutter/material.dart';
import 'package:new_cool_todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.orange[300],
      content: Container(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              //get user input
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(13.0),
                ),
                hintText: "Add a new task",
              ),
            ),

            //buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
              //save button
              MyButton(text: "Save", onPressed: onSave),

              const SizedBox(width: 60),

              //cancel button
              MyButton(text: "Cancel", onPressed: onCancel)
            ],)
          ],
        ),
      ),
    );
  }
}
