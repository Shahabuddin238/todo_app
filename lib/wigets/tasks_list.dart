import 'package:flutter/material.dart';
import 'tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutterapp/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData ,child){
        return  ListView.builder(
          itemBuilder: (context, index) {
            final task =taskData.tasks[index];
            return TasksTile(
                tasksTile: task.name,
                ischecked: task.isDone,
                longPressCallBack: (){taskData.deleteTask(task);},
                checkBoxCallBack: (checkBoxState) {taskData.updateTaskt(task);
                });
          },
          itemCount: taskData.taskcount,
        );
      },

    );
  }
}
// use comsumer at place of provider to reduce code