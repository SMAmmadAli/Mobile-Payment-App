import 'package:flutter/material.dart';
import 'package:mobile_payment_app/utils/color_constant.dart';

class MyContainer3 extends StatelessWidget {
  final Icon icon;
  final String text;
  const MyContainer3({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: ((context) => AlertDialog(
                      backgroundColor: MyColors.blue2,
                      title: Text(
                        'Sorry!',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: MyColors.pink,
                        ),
                      ),
                      content: Container(
                        child: Text(
                          "This feature is not available right now",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: MyColors.white,
                          ),
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: const Text(
                            "N0",
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: const Text(
                            "OK",
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    )));
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Color(0xff242042),
              borderRadius: BorderRadius.circular(15),
            ),
            child: icon,
          ),
        ),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 10, color: MyColors.white),
        )
      ],
    );
  }
}
