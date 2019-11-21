import 'package:flutter/material.dart';
import 'package:todo_state_app/widgets/tasks_list.dart';
import 'package:todo_state_app/screens/AddTaskScreen.dart';
import 'package:todo_state_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksNotifier>(
      builder: (context, taskNotifier, child) {
        return Scaffold(
          backgroundColor: Colors.lightBlueAccent,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            child: Icon(
              Icons.add,
              size: 30,
            ),
            onPressed: () {
              showModalBottomSheet(
                  context: context, builder: (context) => AddTaskScreen());
            },
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 60,
                  left: 30,
                  right: 30,
                  bottom: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30.0,
                      child: Icon(
                        Icons.list,
                        size: 30,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'Todoey',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      '${taskNotifier.length} Tasks',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TasksList(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
