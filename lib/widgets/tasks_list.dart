import 'package:flutter/material.dart';
import 'package:todo_state_app/widgets/tasks_tile.dart';
import 'package:todo_state_app/models/Task.dart';
import 'package:todo_state_app/models/task_data.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TasksNotifier>(
      builder: (context, tasksNotifier, child) {
        List<Task> tasks = tasksNotifier.tasks;
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskTitle: tasks[index].name,
                isChecked: tasks[index].isDone,
                onLongPress: () {
                  tasksNotifier.delete(tasks[index]);
                },
                checkboxCallback: (bool checkboxState) {
                  tasksNotifier.updateTask(tasks[index]);
                });
          },
          itemCount: tasksNotifier.length,
        );
      },
    );
  }
}
