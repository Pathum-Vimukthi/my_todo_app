import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:todo_app/widget/cutom_text.dart';

class TaskContainer extends StatelessWidget {
  const TaskContainer({
    super.key,
    required this.taskName,
  });

  final String taskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85.w,
      height: 12.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black87,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomText(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              text: taskName,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
