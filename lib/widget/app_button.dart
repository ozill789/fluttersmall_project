// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/apptext.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  Color color;
  Color backgroundcolor;
  Color bordercolor;
  String? text;
  IconData? icon;
  bool? istext;

  AppButton({
    super.key,
    required this.color,
    required this.backgroundcolor,
    required this.bordercolor,
    this.text,
    this.icon,
    this.istext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          border: Border.all(color: bordercolor, width: 2.0),
          borderRadius: BorderRadius.circular(15),
          color: backgroundcolor),
      child: istext == false
          ? Center(
              child: Icon(
              icon,
              color: color,
            ))
          : Center(child: AppText(size: 20, color: color, text: text!)),
    );
  }
}
