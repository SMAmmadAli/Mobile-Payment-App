import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MyContainer1 extends StatelessWidget {
  final Color color;
  final Icon icon;
  const MyContainer1({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 40,
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(5), bottomLeft: Radius.circular(5))),
      child: icon,
    );
  }
}
