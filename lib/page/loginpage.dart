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
            height: MediaQuery.of(context).size.height * 0.75,
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
        ],
      ),
    );
  }
}
