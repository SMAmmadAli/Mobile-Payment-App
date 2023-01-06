import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/widgets/Offer_widget/list_tile.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      body: ListView(
        children: [
          MyListTile(
              color: MyColors.purple2,
              img: Image.asset('asset/image/image 1.png'),
              title: 'Mobile Recharge Offer',
              subtitle:
                  'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply'),
          MyListTile(
              color: MyColors.purple,
              img: Image.asset('asset/image/image 1.png'),
              title: 'Mobile Recharge Offer',
              subtitle:
                  'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply'),
          MyListTile(
              color: MyColors.brown,
              img: Image.asset('asset/image/image 1.png'),
              title: 'Mobile Recharge Offer',
              subtitle:
                  'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply'),
          MyListTile(
              color: MyColors.yellow,
              img: Image.asset('asset/image/image 1.png'),
              title: 'Mobile Recharge Offer',
              subtitle:
                  'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply'),
          MyListTile(
              color: MyColors.green2,
              img: Image.asset('asset/image/image 1.png'),
              title: 'Mobile Recharge Offer',
              subtitle:
                  'Get 20 % Instant cashback upto Rs 50 on your firs mobile recharge. T&C apply'),
        ],
      ),
    );
  }
}
