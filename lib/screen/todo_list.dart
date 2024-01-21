import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:todo_app/widget/cutom_text.dart';
import 'package:todo_app/widget/task_container.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tasks = [];

    TextEditingController task = TextEditingController();

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 234, 216, 198),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  text: "ToDo's",
                ),
                const Column(
                  children: [
                    TaskContainer(
                      taskName: "Task 1",
                    ),
                  ],
                ),
                Container(
                  width: 85.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50.w,
                          height: 8.h,
                          child: TextField(
                            controller: task,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Add Task",
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
