import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ResponsiveButton extends StatelessWidget {
  double? width;
  bool? textdynamic;
  double height;
  double size;

  ResponsiveButton({
    super.key,
    this.textdynamic,
    required this.size,
    required this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: textdynamic == false
            ? Center(
                child: Text(
                'Book Trip Now',
                style: TextStyle(fontSize: size),
              ))
            : Center(
                child: Text(
                'Join Us',
                style: TextStyle(fontSize: size),
              )));
  }
}
