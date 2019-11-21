import 'package:flutter/material.dart';
import 'package:todo_state_app/models/Task.dart';
import 'dart:collection';

class TasksNotifier extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy mile'),
    Task(name: 'buy doe'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get length {
    return _tasks.length;
  }

  void add(newTask) {
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleTask();
    notifyListeners();
  }

  void delete(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
