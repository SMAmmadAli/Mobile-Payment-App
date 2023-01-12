import 'package:flutter/material.dart';

class AltertMessage extends StatelessWidget {
  final Icon icon;
  const AltertMessage({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: ((context) => AlertDialog(
                  title: const Text(
                    'Sorry!',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  content: Container(
                    child: const Text(
                      "This feature is not available right now",
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
