import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/page/loginpage.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';
import 'package:mobile_payment_app/widgets/condition_alert.dart';

import '../utils/texts_constant.dart';
import '../widgets/login_button.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController takeEmail = TextEditingController();

  TextEditingController takePassword = TextEditingController();

  signup(context) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: takeEmail.text, password: takePassword.text);
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        // print('The password provided is too weak.');
        ConditionAlert(
            icon: Icon(Icons.person),
            text1: "Sorry",
            text2: "The password provided is too weak.");
      } else if (e.code == 'email-already-in-use') {
        // print('The account already exists for that email.');
        ConditionAlert(
            icon: Icon(Icons.person),
            text1: "Sorry",
            text2: "The account already exists for that email.");
      }
    } catch (e) {
      print(e);
    }
  }

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 40),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                children: [
                  Text(
                    MyTexts.SignUp_text1,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: MyColors.grey),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    MyTexts.SignUp_text2,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: MyColors.grey),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  MyTexts.labelText,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: MyColors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.8,
                  child: TextField(
                    style: TextStyle(color: MyColors.white),
                    controller: takeEmail,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: MyColors.lightBlack,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                        hintText: MyTexts.hintText,
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: MyColors.grey),
                        border: InputBorder.none,
                        labelText: MyTexts.labelText,
                        labelStyle: TextStyle(
                            color: MyColors.lightBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  MyTexts.username,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: MyColors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.8,
                  child: TextField(
                    style: TextStyle(color: MyColors.white),
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.person,
                          color: MyColors.lightBlack,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                        hintText: MyTexts.hintText,
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: MyColors.grey),
                        border: InputBorder.none,
                        labelText: MyTexts.labelText,
                        labelStyle: TextStyle(
                            color: MyColors.lightBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  MyTexts.labelText2,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: MyColors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.8,
                  child: TextField(
                    style: TextStyle(color: MyColors.white),
                    obscureText: showPassword,
                    controller: takePassword,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.lock,
                          color: MyColors.lightBlack,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            icon: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: MyColors.lightBlack,
                            )),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                        hintText: MyTexts.hintText,
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: MyColors.grey),
                        border: InputBorder.none,
                        labelText: MyTexts.labelText2,
                        labelStyle: TextStyle(
                            color: MyColors.lightBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  MyTexts.reEnterPass,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      color: MyColors.white),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.height * 0.8,
                  child: TextField(
                    style: TextStyle(color: MyColors.white),
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Icon(
                          CupertinoIcons.return_icon,
                          color: MyColors.lightBlack,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                showPassword = !showPassword;
                              });
                            },
                            icon: Icon(
                              showPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: MyColors.lightBlack,
                            )),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                        hintText: MyTexts.hintText,
                        hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: MyColors.grey),
                        border: InputBorder.none,
                        labelText: MyTexts.labelText2,
                        labelStyle: TextStyle(
                            color: MyColors.lightBlack,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () {
              signup(context);
            },
            child: LoginButton(
              text: MyTexts.signUp,
              bgcolor: MyColors.blue,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                MyTexts.haveAccount,
                style: TextStyle(
                    color: MyColors.lightBlack,
                    fontWeight: FontWeight.w500,
                    fontSize: 14),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => LoginPage())));
                },
                child: Text(
                  MyTexts.loginText,
                  style: TextStyle(
                      color: MyColors.lightBlack,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
