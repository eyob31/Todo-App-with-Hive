import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  // reference the box
  final _mybox = Hive.box('MyBox');

  // Run this method if this is the first time to ever open the app
  void createInitialData() {
    toDoList = [
      ["Make my bed", false],
      ["Sleep", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _mybox.get("TODOLIST");
  }

  // Update the data
  void updateData() {
    _mybox.put("TODOLIST", toDoList);
  }
}
