import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;

  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    String ?newTaskTitle;
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
              addTaskCallback(newTaskTitle);
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
