import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      padding: EdgeInsets.all(20.0),
      /*
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0)
        ),
      ),*/
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, color: Colors.lightBlueAccent),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: ('Enter task'),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.red,
                )
              )
            ),
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              context.read<TaskData>().addTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(color: Colors.white),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent),
          )
        ],
      ),
    );
  }
}
