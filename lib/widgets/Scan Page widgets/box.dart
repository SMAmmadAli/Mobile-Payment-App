import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class ScanPageBox extends StatelessWidget {
  final String text;
  final String text2;
  final Icon icon;
  const ScanPageBox(
      {super.key, required this.text, required this.text2, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: MyColors.lightBlack,
          borderRadius: BorderRadius.circular(15),
        ),
        width: MediaQuery.of(context).size.width * 0.9,
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              text,
              style: TextStyle(
                  color: MyColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              text2,
              style: TextStyle(
                  color: MyColors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            icon
          ],
        ));
  }
}
