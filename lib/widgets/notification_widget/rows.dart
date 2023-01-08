import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class NotificationRows extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  const NotificationRows(
      {super.key,
      required this.text1,
      required this.text2,
      required this.text3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: MyColors.white),
              ),
              Text(
                text2,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: MyColors.grey),
              ),
              Text(
                text3,
                style: TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.w600,
                    color: MyColors.grey),
              ),
            ],
          ),
          CircleAvatar(
            backgroundColor: MyColors.grey,
            radius: 20,
            child: Icon(
              Icons.notification_add,
              color: MyColors.white,
              size: 25,
            ),
          )
        ],
      ),
    );
  }
}
