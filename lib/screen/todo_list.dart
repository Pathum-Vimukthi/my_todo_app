import 'package:flutter/material.dart';
import 'package:todo_app/widget/cutom_text.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 216, 198),
        body: Center(
          child: Column(
            children: [
              const CustomText(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                text: "ToDo's",
              ),
              Column(
                children: [
                  TaskContainer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
