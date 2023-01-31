import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';

import '../utils/texts_constant.dart';
import '../widgets/login_button.dart';

class SignUpPage extends StatelessWidget {
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
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bgcolor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            controller: takeEmail,
            decoration: InputDecoration(
              hintText: 'Email',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: takePassword,
            decoration: InputDecoration(
              hintText: 'Password',
              filled: true,
              fillColor: Colors.grey[200],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              signup(context);
            },
            child: LoginButton(
              text: MyTexts.loginText,
              bgcolor: MyColors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
