import 'package:flutter/material.dart';
import 'package:mobile_payment_app/page/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
              headline1: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: Colors.white,
      ))),
      home: const Scaffold(
        body: SplashScreen(),
      ),
    );
  }
}
