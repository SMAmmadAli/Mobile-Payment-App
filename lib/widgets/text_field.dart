import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Color color;
  final Color bgcolor;

  const MyTextField(
      {super.key,
      required this.hintText,
      required this.color,
      required this.bgcolor,
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
            hintText: hintText,
            hintStyle: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
                color: Color(0xffb858891)),
            border: InputBorder.none,
            labelText: labelText,
            labelStyle: TextStyle(
                color: color, fontSize: 16, fontWeight: FontWeight.w700)),
      ),
    );
  }
}
