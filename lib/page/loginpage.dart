import 'package:flutter/material.dart';

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
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('asset/image/login.png'))),
            child: Stack(
              children: [
                Positioned(
                    top: 20,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'LOGIN WITH YOUR',
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        Text('MOBILE PHONE',
                            style: Theme.of(context).textTheme.headline1),
                        Text('NUMBER',
                            style: Theme.of(context).textTheme.headline1),
                      ],
                    )),
                Positioned(
                    top: 120,
                    left: 30,
                    child: Container(
                      width: 200,
                      height: 135,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/image/login2.png'))),
                    )),
                Positioned(
                    top: 160,
                    left: 80,
                    child: Container(
                      width: 80,
                      height: 140,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/image/1.png'))),
                    )),
                Positioned(
                    top: 210,
                    left: 60,
                    child: Container(
                      width: 84,
                      height: 120,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('asset/image/2.png'))),
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
                color: Color(0xffEDEFFF),
                borderRadius: BorderRadius.circular(30)),
            child: const TextField(
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
                  hintText: "Enter Mobile Number",
                  hintStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffb858891)),
                  border: InputBorder.none,
                  labelText: "+92",
                  labelStyle: TextStyle(
                      color: Color(0xff4D5DFA),
                      fontSize: 16,
                      fontWeight: FontWeight.w700)),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.08,
              decoration: BoxDecoration(
                  color: const Color(0xff4D5DFA),
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Center(
                  child: Text(
                    'Verify',
                    style: TextStyle(
                        color: Color(0xffEDEFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Your personal details are safe with us',
            style: TextStyle(
                color: Color(0xff7C82BA),
                fontSize: 11,
                fontWeight: FontWeight.w400),
          ),
          const SizedBox(height: 2),
          const Text(
            'Read our Privacy Policy and Terms and Conditions',
            style: TextStyle(
                color: Color(0xff7C82BA),
                fontSize: 11,
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
