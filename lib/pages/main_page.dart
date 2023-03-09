import 'package:flutter/material.dart';
import 'package:mad_examen_quintinblume/pages/account.dart';
import 'package:mad_examen_quintinblume/pages/discover.dart';
import 'package:mad_examen_quintinblume/pages/index.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  List pages = [
    const Homepage(),
    const Discover(),
    const Account(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff41824A),
        elevation: 0,
        iconSize: 40,
        unselectedItemColor: Color(0xffFEFAF9),
        selectedItemColor: Color(0xff3D5328),
        currentIndex: currentIndex,
        onTap: onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined),
            label: 'Start',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Zoek',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
