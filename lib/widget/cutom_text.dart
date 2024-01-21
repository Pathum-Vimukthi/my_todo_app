import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    required this.text,
  });

  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontSize, fontWeight: fontWeight, color: color),
    );
  }
}
