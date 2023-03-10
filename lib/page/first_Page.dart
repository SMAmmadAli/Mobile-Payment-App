import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/page/balance.dart';
import 'package:mobile_payment_app/page/home_page.dart';
import 'package:mobile_payment_app/page/notification_page.dart';
import 'package:mobile_payment_app/page/offer_page.dart';
import 'package:mobile_payment_app/page/profile_page.dart';
import 'package:mobile_payment_app/page/reward_page.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/utils/texts_constant.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: MyColors.bgcolor,
        appBar: AppBar(
          backgroundColor: MyColors.bgcolor,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage())),
              child: const CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('asset/image/p1.png'),
              ),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(left: 5, right: 15),
            child: Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: MyColors.lightBlack,
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    CupertinoIcons.search,
                    color: MyColors.grey,
                    size: 25,
                  ),
                  contentPadding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
                  hintText: MyTexts.Appbartext,
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: MyColors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          actions: [
            GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotificationPage())),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: MyColors.lightBlack,
                  child: Icon(
                    CupertinoIcons.bell_solid,
                    size: 25,
                    color: MyColors.grey,
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
              isScrollable: true,
              indicator: BoxDecoration(
                  color: MyColors.lightBlack,
                  borderRadius: BorderRadius.circular(15)),
              tabs: [
                Text(
                  'Home',
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Balance',
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Offers',
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Rewards',
                  style: TextStyle(
                      color: MyColors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ]),
        ),
        body: const TabBarView(children: [
          HomePage(),
          BalancePage(),
          OfferPage(),
          RewardsPage(),
        ]),
      ),
    );
  }
}
