import 'package:flutter/material.dart';
import 'package:flutter_application_1/detailpages/placemount1_detail.dart';
import 'package:flutter_application_1/widget/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PlaceMount1Detail(),
      debugShowCheckedModeBanner: false,
    );
  }
}
