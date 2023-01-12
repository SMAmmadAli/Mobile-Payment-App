import 'package:flutter/material.dart';

import '../../utils/color_constant.dart';

class MyContainer2 extends StatelessWidget {
  final Color color;
  final String text;
  const MyContainer2({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: ((context) => AlertDialog(
                    backgroundColor: MyColors.blue2,
                    title: Text(
                      'Sorry!',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: MyColors.pink,
                        fontSize: 16,
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
          width: MediaQuery.of(context).size.width * 0.4,
          height: 40,
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(5),
                  bottomRight: Radius.circular(5))),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                  color: MyColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
