import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';

class MyContainer3 extends StatelessWidget {
  final Icon icon;
  final String text;
  const MyContainer3({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xff242042),
            borderRadius: BorderRadius.circular(15),
          ),
          child: icon,
        ),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 10, color: MyColors.white),
        )
      ],
    );
  }
}
