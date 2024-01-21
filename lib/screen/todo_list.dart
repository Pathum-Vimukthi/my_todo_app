import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:todo_app/widget/cutom_text.dart';

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const CustomText(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              Column(
                children: [
                  Container(
                    width: 85.w,
                    height: 15.h,
                    color: Colors.red,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
