import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobile_payment_app/page/loginpage.dart';

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
      backgroundColor: Color(0xff111111),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            width: 78,
            height: 78,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/image/splash icon.png'),
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
                    child: Image.asset('asset/image/splash icon2.png'),
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
                color: Color(0xff4D5DFA),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'INSTANT PAY',
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'Your Perfect Payment Partner',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
