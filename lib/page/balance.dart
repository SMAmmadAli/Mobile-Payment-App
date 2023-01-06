import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/widgets/Balance/balance_container.dart';

class BalancePage extends StatelessWidget {
  const BalancePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
        child: Container(
          height: 370,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: MyColors.lightBlack,
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 25,
                    color: MyColors.pink,
                  ),
                  Column(
                    children: [
                      Text(
                        "Portfolio Value",
                        style: TextStyle(
                            color: MyColors.pink,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "4,375",
                        style: TextStyle(
                            color: MyColors.pink,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "In 3 Accounts",
                        style: TextStyle(
                            color: MyColors.pink,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Icon(
                    CupertinoIcons.building_2_fill,
                    size: 25,
                    color: MyColors.pink,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BalanceContainer(
                      color1: MyColors.purple2,
                      text1: 'Federel Bank',
                      text2: '1142524899652',
                      text3: '16,456.05'),
                  BalanceContainer(
                      color1: MyColors.purple,
                      text1: 'States Bank',
                      text2: '1142524899652',
                      text3: '2045.05'),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: BalanceContainer(
                        color1: MyColors.green2,
                        text1: 'Best Bank',
                        text2: '1142521547852',
                        text3: '35873.5'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(
                      CupertinoIcons.right_chevron,
                      color: MyColors.pink,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: MyColors.lightpurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 40,
                    child: Center(
                      child: Text(
                        'Add / Manage Accounts',
                        style: TextStyle(
                            color: MyColors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
