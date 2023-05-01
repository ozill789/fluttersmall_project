import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTextBold extends StatelessWidget {
  double size;
  final String text;
  final Color color;

  AppTextBold(
      {super.key, required this.size, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}
