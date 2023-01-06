import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class BalanceContainer extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final Color color1;
  const BalanceContainer(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.color1});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.43,
      height: 100,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(15), color: color1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text1,
              style: TextStyle(
                  color: MyColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
          Text(text2,
              style: TextStyle(
                  color: MyColors.pink,
                  fontSize: 10,
                  fontWeight: FontWeight.w600)),
          Text(text3,
              style: TextStyle(
                  color: MyColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
