import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';

class LoginButton extends StatelessWidget {
  final String text;
  final Color bgcolor;
  const LoginButton({super.key, required this.text, required this.bgcolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
          color: bgcolor, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: MyColors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
