import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../widgets/HomePage Widgets/container1.dart';
import '../widgets/HomePage Widgets/container2.dart';
import '../widgets/HomePage Widgets/container3.dart';
import '../widgets/HomePage Widgets/text1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.bgcolor,
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const MyBodyText(text: "Money Transfer"),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 5),
              child: Row(
                children: [
                  MyContainer1(
                      color: MyColors.purple,
                      icon: Icon(
                        Icons.qr_code,
                        color: MyColors.white,
                        size: 25,
                      )),
                  MyContainer2(color: MyColors.purple2, text: 'Scan QR Code'),
                  const SizedBox(
                    width: 4,
                  ),
                  MyContainer1(
                    color: MyColors.lightgreen,
                    icon: Icon(
                      Icons.contact_phone_outlined,
                      color: MyColors.white,
                      size: 25,
                    ),
                  ),
                  MyContainer2(
                      color: Colors.green.shade800, text: 'Send to Contact')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 5),
              child: Row(
                children: [
                  MyContainer1(
                    color: Colors.lime.shade900,
                    icon: Icon(
                      CupertinoIcons.building_2_fill,
                      color: MyColors.white,
                      size: 25,
                    ),
                  ),
                  MyContainer2(color: MyColors.yellow, text: 'Send To Bank'),
                  const SizedBox(
                    width: 4,
                  ),
                  MyContainer1(
                    color: Colors.brown.shade600,
                    icon: Icon(
                      Icons.transform_rounded,
                      color: MyColors.white,
                      size: 25,
                    ),
                  ),
                  MyContainer2(color: MyColors.brown, text: 'Self Transfer')
                ],
              ),
            ),
            const MyBodyText(text: "Recharge & Bill Payments"),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 5),
              child: Row(
                children: [
                  MyContainer1(
                    color: MyColors.purple,
                    icon: Icon(
                      Icons.paid_outlined,
                      color: MyColors.white,
                      size: 25,
                    ),
                  ),
                  MyContainer2(color: MyColors.blue2, text: 'Postpaid bill'),
                  const SizedBox(
                    width: 4,
                  ),
                  MyContainer1(
                    color: MyColors.lightgreen,
                    icon: Icon(
                      Icons.mobile_screen_share,
                      color: MyColors.white,
                      size: 25,
                    ),
                  ),
                  MyContainer2(color: MyColors.green2, text: 'MobileRecharge')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12, bottom: 5),
              child: Row(
                children: [
                  MyContainer1(
                    color: Colors.deepPurple.shade300,
                    icon: Icon(
                      Icons.light_mode,
                      color: MyColors.white,
                      size: 25,
                    ),
                  ),
                  MyContainer2(
                      color: MyColors.purple2, text: 'Electricity Bill'),
                  const SizedBox(
                    width: 4,
                  ),
                  MyContainer1(
                    color: Colors.brown.shade600,
                    icon: Icon(
                      Icons.play_circle_outline_outlined,
                      color: MyColors.white,
                      size: 25,
                    ),
                  ),
                  MyContainer2(color: MyColors.brown2, text: 'DTH Recharge')
                ],
              ),
            ),
            const MyBodyText(text: "Ticket Booking"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyContainer3(
                    icon: Icon(
                      CupertinoIcons.film,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Movies"),
                MyContainer3(
                    icon: Icon(
                      CupertinoIcons.tram_fill,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Trains"),
                MyContainer3(
                    icon: Icon(
                      CupertinoIcons.bus,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Bus"),
                MyContainer3(
                    icon: Icon(
                      Icons.flight,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Flights"),
                MyContainer3(
                    icon: Icon(
                      CupertinoIcons.car_detailed,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Car"),
              ],
            ),
            const MyBodyText(text: "More Services"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MyContainer3(
                    icon: Icon(
                      CupertinoIcons.building_2_fill,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Invest"),
                MyContainer3(
                    icon: Icon(
                      Icons.percent_rounded,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Loans"),
                MyContainer3(
                    icon: Icon(
                      CupertinoIcons.heart,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Insurance "),
                MyContainer3(
                    icon: Icon(
                      CupertinoIcons.car_detailed,
                      size: 25,
                      color: MyColors.pink,
                    ),
                    text: "Fastag"),
              ],
            ),
            const MyBodyText(text: "Recent Transactions"),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('asset/image/image 1.png'),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('asset/image/image 2.png'),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('asset/image/image 3.png'),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('asset/image/image 4.png'),
                ),
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage('asset/image/image 5.png'),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ]),
        ));
  }
}
