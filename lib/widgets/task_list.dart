import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todooo/widgets/task_tile.dart';
import '../modals/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            final taskItem=taskData.tasks[index];
            return TaskTile(
              title: taskItem.name,
              checkBoxCallBack:(bool checkboxState){
                taskData.updateTask(taskItem);
              },
              isChecked: taskItem.isDone,
              longPressCallBack:(){
                taskData.deleteTask(taskItem);
              }
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
