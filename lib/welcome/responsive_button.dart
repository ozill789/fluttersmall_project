import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  double? width;
  bool? isresponsive;
  ResponsiveButton({super.key, this.isresponsive = false, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: 30,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.blue),
        child: const Padding(
          padding: EdgeInsets.only(top: 3),
          child: Text(
            'Join Us',
            style: TextStyle(fontSize: 18, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ));
  }
}
