import 'package:flutter/material.dart';
import 'package:mobile_payment_app/page/first_Page.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/utils/image_constant.dart';
import 'package:mobile_payment_app/utils/texts_constant.dart';
import 'package:mobile_payment_app/widgets/bottom_text.dart';
import 'package:mobile_payment_app/widgets/login_button.dart';
import 'package:mobile_payment_app/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.68,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(MyImages.loginPg1))),
            child: Stack(
              children: [
                Positioned(
                    top: 20,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          MyTexts.heading1,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text(MyTexts.heading2,
                            style: Theme.of(context).textTheme.headline1),
                        Text(MyTexts.heading3,
                            style: Theme.of(context).textTheme.headline1),
                      ],
                    )),
                Positioned(
                    top: 120,
                    left: 30,
                    child: Container(
                      width: 200,
                      height: 135,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyImages.loginPg2))),
                    )),
                Positioned(
                    top: 160,
                    left: 80,
                    child: Container(
                      width: 80,
                      height: 140,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyImages.loginPg3))),
                    )),
                Positioned(
                    top: 210,
                    left: 60,
                    child: Container(
                      width: 84,
                      height: 120,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(MyImages.loginPg4))),
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MyTextField(
              hintText: MyTexts.hintText,
              color: MyColors.blue,
              bgcolor: MyColors.white,
              labelText: MyTexts.labelText),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => FirstPage()));
            },
            child: LoginButton(
              text: MyTexts.loginText,
              bgcolor: MyColors.blue,
            ),
          ),
          const SizedBox(height: 10),
          ButtomText(
            text: MyTexts.bottontext1,
            fontSize: 11,
            color: MyColors.lightblue,
          ),
          const SizedBox(height: 2),
          ButtomText(
            text: MyTexts.bottontext2,
            fontSize: 11,
            color: MyColors.lightblue,
          ),
        ],
      ),
    );
  }
}
