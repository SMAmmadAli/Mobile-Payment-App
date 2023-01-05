import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MyContainer2 extends StatelessWidget {
  final Color color;
  final String text;
  const MyContainer2({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: 40,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(5), bottomRight: Radius.circular(5))),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: MyColors.white),
          ),
        ),
      ),
    );
  }
}
