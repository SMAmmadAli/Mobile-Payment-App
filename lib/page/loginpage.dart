import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/page/first_Page.dart';
import 'package:mobile_payment_app/page/home_page.dart';
import 'package:mobile_payment_app/page/signup_page.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/utils/image_constant.dart';
import 'package:mobile_payment_app/utils/texts_constant.dart';
import 'package:mobile_payment_app/widgets/bottom_text.dart';
import 'package:mobile_payment_app/widgets/login_button.dart';
import 'package:mobile_payment_app/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  TextEditingController enterEmail = TextEditingController();
  TextEditingController enterPassword = TextEditingController();

  login(context) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: enterEmail.text,
        password: enterPassword.text,
      );
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
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
                        ),
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
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                  color: MyColors.bgcolor,
                  borderRadius: BorderRadius.circular(30)),
              child: TextField(
                controller: enterEmail,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                    hintText: MyTexts.hintText,
                    hintStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: MyColors.grey),
                    border: InputBorder.none,
                    labelText: MyTexts.labelText,
                    labelStyle: TextStyle(
                        color: MyColors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    color: MyColors.bgcolor,
                    borderRadius: BorderRadius.circular(30)),
                child: TextField(
                  obscureText: true,
                  controller: enterPassword,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                      hintText: MyTexts.hintText,
                      hintStyle: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: MyColors.grey),
                      border: InputBorder.none,
                      labelText: MyTexts.labelText,
                      labelStyle: TextStyle(
                          color: MyColors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w700)),
                )),

            // MyTextField(
            //     hintText: MyTexts.hintText,
            //     color: MyColors.blue,
            //     bgcolor: MyColors.white,
            //     labelText: MyTexts.labelText),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                login(context);
              },
              child: LoginButton(
                text: MyTexts.loginText,
                bgcolor: MyColors.blue,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
                padding: const EdgeInsets.only(left: 160.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpPage(),
                        ));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        color: MyColors.lightblue,
                        fontWeight: FontWeight.w500,
                        fontSize: 14),
                  ),
                )),
            const SizedBox(height: 5),
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
      ),
    );
  }
}
