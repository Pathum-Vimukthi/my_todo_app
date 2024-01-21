import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:todo_app/widget/cutom_text.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

List<String> tasks = [];

TextEditingController task = TextEditingController();

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 70.h,
                      width: 85.w,
                      child: ListView.builder(
                        itemCount: tasks.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Container(
                                width: 85.w,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black87,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        text: tasks[index],
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(
                                            () {
                                              tasks.remove(tasks[index]);
                                            },
                                          );
                                        },
                                        icon: const Icon(
                                          Icons.check,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          );
                        },
                      ),
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
                          onPressed: () {
                            if (task.text.isNotEmpty) {
                              setState(() {
                                tasks.add(task.text);
                                task.clear();
                              });
                            }
                          },
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
