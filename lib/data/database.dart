import 'package:hive_flutter/hive_flutter.dart';
class ToDoDataBase{
    List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Wake up at 8:00', false],
      ['Do Exercise', false],
    ];
  }

  //load data from databse
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  //update the database
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }

}