import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.bgcolor,
        leading: CircleAvatar(
          backgroundImage: AssetImage('asset/image/p1.png'),
        ),
      ),
    );
  }
}
