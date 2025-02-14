import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  List<String> _tasks = [];
  List<bool> _isCheckedList = [];

  List<String> get tasks => _tasks;
  List<bool> get isCheckedList => _isCheckedList;

  void addTask(String task) {
    _tasks.add(task);
    _isCheckedList.add(false);
    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    _isCheckedList.removeAt(index);
    notifyListeners();
  }

  void toggleTask(int index, bool value) {
    _isCheckedList[index] = value;
    notifyListeners();
  }
}
