import 'package:flutter/material.dart';
import 'package:mobile_payment_app/widgets/Offer_widget/list_tile.dart';
import 'package:mobile_payment_app/widgets/Reward%20Widget/box.dart';
import 'package:mobile_payment_app/widgets/bottom_text.dart';

import '../utils/color_constant.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.bgcolor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.85,
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors.lightBlack,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Casbacks earned",
                              style: TextStyle(
                                  color: MyColors.pink,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "\$507 ",
                              style: TextStyle(
                                  color: MyColors.pink,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "+ 88 Rs  This month",
                              style: TextStyle(
                                  color: MyColors.pink,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: MyColors.purple2,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 40,
                              child: Center(
                                child: Text(
                                  'View your cashback history',
                                  style: TextStyle(
                                      color: MyColors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            )
                          ],
                        )),
                  ),
                ],
              ),
              ButtomText(
                  text: 'Collect Rewards', fontSize: 15, color: MyColors.white),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RewardBox(),
                  RewardBox(),
                  RewardBox(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ButtomText(
                  text: 'Collect Rewards', fontSize: 15, color: MyColors.white),
              const SizedBox(
                height: 10,
              ),
              MyListTile(
                  color: MyColors.green2,
                  img: Image.asset('asset/image/image 3.png'),
                  title: 'Flat 50 off On food Delivery',
                  subtitle: 'On orders above 99 on Swaggy, Somato'),
              MyListTile(
                  color: MyColors.yellow,
                  img: Image.asset('asset/image/image 2.png'),
                  title: '20% Cashback On Amason',
                  subtitle: 'Up to Rs 150 Minimum Order 1000'),
            ],
          ),
        ));
  }
}
