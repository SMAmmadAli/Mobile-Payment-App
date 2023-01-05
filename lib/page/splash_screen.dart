import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_payment_app/page/loginpage.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/utils/image_constant.dart';
import 'package:mobile_payment_app/utils/texts_constant.dart';
import 'package:mobile_payment_app/widgets/bottom_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: 78,
            height: 78,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(MyImages.spImage),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  left: 25,
                  child: Container(
                    width: 30,
                    height: 40,
                    child: Image.asset(MyImages.spImage2),
                  ),
                )
              ],
            ),
          )),
          const SizedBox(
            height: 100,
          ),
          Container(
            width: 180,
            decoration: BoxDecoration(
                color: MyColors.blue, borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                MyTexts.splastText2,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ButtomText(
            text: MyTexts.splastText,
            fontSize: 14,
            color: MyColors.white,
          )
        ],
      ),
    );
  }
}
