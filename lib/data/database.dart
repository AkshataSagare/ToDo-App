import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList = [];

  //reference the hive box
  final _myBox = Hive.box('Mybox');

  //load the data from the database
  void loadData() {
    toDoList = _myBox.get('TODOLIST') ?? [];
  }

  void updateData() {
    _myBox.put('TODOLIST', toDoList);
  }


}