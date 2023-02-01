import 'package:flutter/material.dart';

class ButtomText extends StatelessWidget {
  final double fontSize;
  final Color color;
  final String text;
  const ButtomText(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              color: color, fontSize: fontSize, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
