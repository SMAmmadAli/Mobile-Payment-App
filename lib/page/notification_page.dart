import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/widgets/notification_widget/rows.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyColors.bgcolor,
          elevation: 0,
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(
                Icons.arrow_back,
                color: MyColors.grey,
                size: 25,
              )),
        ),
        backgroundColor: MyColors.bgcolor,
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.85,
            height: 380,
            decoration: BoxDecoration(
              color: MyColors.lightBlack,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Notifications',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MyColors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close,
                            size: 15,
                            color: MyColors.white,
                          ))
                    ],
                  ),
                ),
                const NotificationRows(
                    text1: 'Recharge Completed',
                    text2: 'Your last recharge on 9847229989.',
                    text3: 'May 20  - 12:32 Pm'),
                const SizedBox(
                  height: 5,
                ),
                const NotificationRows(
                    text1: 'Money Recived',
                    text2: 'Your account has recieved an 1000.',
                    text3: 'May 20  - 12:45 Pm'),
                const SizedBox(
                  height: 5,
                ),
                const NotificationRows(
                    text1: 'Offer Unlocked',
                    text2: 'Your last recharge on 9847229989.',
                    text3: 'May 20  - 12:32 Pm'),
                const SizedBox(
                  height: 5,
                ),
                const NotificationRows(
                    text1: 'Recharge Completed',
                    text2: 'Your last recharge on 9847229989.',
                    text3: 'May 20  - 12:32 Pm'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Notifications',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MyColors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.arrow_down_circle,
                            size: 15,
                            color: MyColors.white,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
