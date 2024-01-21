import 'package:flutter/material.dart';
import 'package:todo_app/screen/todo_list.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To Do App',
      home: ToDoList(),
    );
  }
}
