import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/widgets/Scan%20Page%20widgets/box.dart';
import 'package:mobile_payment_app/widgets/bottom_text.dart';

class MyScanPage extends StatelessWidget {
  const MyScanPage({super.key});

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
                        height: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: MyColors.lightBlack,
                        ),
                        child: Column(
                          children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, left: 20.0),
                                    child: Text(
                                      "Recieve Money",
                                      style: TextStyle(
                                          color: MyColors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20.0, right: 20.0),
                                    child: Icon(
                                      Icons.close,
                                      size: 20,
                                      color: MyColors.white,
                                    ),
                                  ),
                                ]),
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              'asset/image/scan.png',
                              width: MediaQuery.of(context).size.width * 0.7,
                            )
                          ],
                        ),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: ButtomText(
                    text: "Other Options", fontSize: 15, color: MyColors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              ScanPageBox(
                text: 'Your Pay ID',
                text2: 'xyz@524899652',
                icon: Icon(
                  Icons.copy,
                  size: 20,
                  color: MyColors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              ScanPageBox(
                text: 'Show bank account details',
                text2: '',
                icon: Icon(
                  Icons.chevron_right_sharp,
                  size: 20,
                  color: MyColors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
