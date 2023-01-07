import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';

class MyListTile extends StatelessWidget {
  final Image img;
  final String title;
  final String subtitle;
  final Color color;
  const MyListTile(
      {super.key,
      required this.img,
      required this.title,
      required this.subtitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color,
        ),
        child: ListTile(
            leading: Container(
              child: img,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/offer.png'))),
            ),
            title: Text(
              title,
              style: TextStyle(color: MyColors.white),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(color: MyColors.white),
            )),
      ),
    );
  }
}
