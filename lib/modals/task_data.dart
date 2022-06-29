import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todooo/modals/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> _tasks = [
  ];
  void addNewTask(String title){
    _tasks.add(Task(name: title));
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task){
      task.toggleDone();
      notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }

  int get taskCount{
    return _tasks.length;
  }
}