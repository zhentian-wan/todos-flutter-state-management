import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_state_app/models/task_data.dart';
import 'package:todo_state_app/models/Task.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String taskName;
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 30,
          ),
          child: Column(
            children: <Widget>[
              Text(
                'Add Task',
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Task name",
                ),
                onChanged: (newVal) {
                  taskName = newVal;
                },
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 46,
                width: double.infinity,
                child: FlatButton(
                  color: Colors.lightBlueAccent,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Provider.of<TasksNotifier>(context)
                        .add(new Task(name: taskName));
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
