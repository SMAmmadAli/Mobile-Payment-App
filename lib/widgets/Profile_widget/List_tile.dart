import 'package:flutter/material.dart';
import '../../utils/color_constant.dart';

class ProfileListTile extends StatelessWidget {
  final Icon icon;
  final String text;
  const ProfileListTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w600, color: MyColors.white),
      ),
      trailing: Icon(
        Icons.arrow_right_outlined,
        color: MyColors.white,
        size: 30,
      ),
    );
  }
}
