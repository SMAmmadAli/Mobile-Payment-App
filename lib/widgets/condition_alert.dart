import 'package:flutter/material.dart';

class ConditionAlert extends StatelessWidget {
  final Icon icon;
  final String text1;
  final String text2;
  const ConditionAlert(
      {super.key,
      required this.icon,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: ((context) => AlertDialog(
                  title: Text(
                    text1,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  content: Container(
                    child: Text(
                      text2,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
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
      icon: icon,
    );
  }
}
