import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskcompleted;
  Function(bool?)? onChanged;

   ToDoTile({
     super.key,
     required this.taskName,
     required this.taskcompleted,
     required this.onChanged
   });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            //checkbox
            Checkbox(value: taskcompleted, onChanged: onChanged),

            //task name
            Text(taskName),
          ],
        ),
        decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.circular(13)
        ),
        
      ),
    );
  }
}
