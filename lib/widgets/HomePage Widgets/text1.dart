import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MyBodyText extends StatelessWidget {
  final String text;
  const MyBodyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: MyColors.white),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Container(
            width: 50,
            height: 18,
            decoration: BoxDecoration(
                color: MyColors.lightBlack,
                borderRadius: BorderRadius.circular(5)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    'More',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        color: MyColors.white),
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: MyColors.white,
                  size: 10,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
