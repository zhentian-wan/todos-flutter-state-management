import 'package:flutter/material.dart';
import 'package:todo_state_app/models/task_data.dart';
import 'package:todo_state_app/screens/TasksScreen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => TasksNotifier(),
      child: MaterialApp(
        title: 'Todoey',
        home: TasksScreen(),
      ),
    );
  }
}
