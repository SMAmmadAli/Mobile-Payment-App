// import 'package:flutter/material.dart';
// import 'package:mobile_payment_app/utils/color_constant.dart';

// class MyTextField extends StatelessWidget {
//   final String? hintText;
//   final String? labelText;
//   final Color color;
//   final Color bgcolor;

//   MyTextField(
//       {super.key,
//       this.hintText,
//       required this.color,
//       required this.bgcolor,
//       this.labelText});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 0.8,
//       height: MediaQuery.of(context).size.height * 0.08,
//       decoration: BoxDecoration(
//           color: bgcolor, borderRadius: BorderRadius.circular(30)),
//       child: TextField(
//         controller: enterEmail,
//         decoration: InputDecoration(
//             contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 10),
//             hintText: hintText,
//             hintStyle: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.w700,
//                 color: MyColors.grey),
//             border: InputBorder.none,
//             labelText: labelText,
//             labelStyle: TextStyle(
//                 color: color, fontSize: 16, fontWeight: FontWeight.w700)),
//       ),
//     );
//   }
// }
