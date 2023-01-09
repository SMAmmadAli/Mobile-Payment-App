import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MyProfileColumn extends StatelessWidget {
  final String text1;
  final String text2;
  const MyProfileColumn({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w600, color: MyColors.pink),
        ),
        Text(
          text2,
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w500, color: MyColors.white),
        )
      ],
    );
  }
}
