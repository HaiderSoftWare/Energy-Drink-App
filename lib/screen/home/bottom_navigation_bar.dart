import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:drink_app/screen/home/home.dart';
import 'package:drink_app/screen/profile/profile.dart';
import 'package:flutter/material.dart';

import '../cart/cart.dart';

class BottomnNavigationBar extends StatefulWidget {
  @override
  State<BottomnNavigationBar> createState() => _BottomnNavigationBarState();
}

class _BottomnNavigationBarState extends State<BottomnNavigationBar> {
  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
    const ProfileScreen(),
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: const Color(0xff23CBAD),
        backgroundColor: Colors.transparent,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: currentindex == 0 ? Colors.white : const Color(0xffAAAAAA),
          ),
          Icon(
            Icons.shopping_bag_outlined,
            size: 30,
            color: currentindex == 1 ? Colors.white : const Color(0xffAAAAAA),
          ),
          Icon(
            Icons.padding,
            size: 30,
            color: currentindex == 2 ? Colors.white : const Color(0xffAAAAAA),
          ),
          Icon(
            Icons.notifications_active_outlined,
            size: 30,
            color: currentindex == 3 ? Colors.white : const Color(0xffAAAAAA),
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('asset/unsplash_ksm0qsJcxXk.png'),
          ),
        ],
        onTap: (index) {
          setState(() {
            currentindex = index;
          });
        },
      ),
      body: pages[currentindex],
    );
  }
}
