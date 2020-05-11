import 'package:flutter/foundation.dart';
import 'package:todoeyflutterapp/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Buy Milk'),
    Task(name: 'Buy Fruits'),
    Task(name: 'Buy Egg'),
  ];

//  UnmodifiableListView<Task>get tasks{ // it is use to provied safe data use to other
//    return UnmodifiableListView(_tasks);
//  }

  int get taskcount{
    return tasks.length;
  }

  void addTask(String newTaskTile){
    final task = Task(name: newTaskTile);
    tasks.add(task);
    notifyListeners();// used to update data anywhere
  }

  void updateTaskt(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}