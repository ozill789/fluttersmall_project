import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bar_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/person_page.dart';
import 'package:flutter_application_1/pages/search_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  List pages = [
    const HomePage(),
    const BarPage(),
    const SearchPage(),
    const PersonPage()
  ];

  int currentindex = 0;

  void onTap(index) {
    setState(() {
      currentindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
          unselectedItemColor: const Color.fromARGB(255, 156, 146, 146),
          elevation: 0,
          currentIndex: currentindex,
          onTap: onTap,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ]),
    );
  }
}
