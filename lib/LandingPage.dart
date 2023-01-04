import 'package:aduanifie_ui/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CategoriesScreen.dart';
import 'Orders.dart';
import 'Profile.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedTab = 0;
  _changeTab(int index) {
    setState(() {
      _selectedTab = index;
    });
  }

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const Categories(),
      const Orders(),
      const Profile(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens()[_selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) => _changeTab(index),
        selectedItemColor: const Color.fromRGBO(242, 163, 15, 1),
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        selectedLabelStyle: const TextStyle(
          fontFamily: "Raleway",
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
        unselectedLabelStyle: const TextStyle(
            fontFamily: "Raleway",
            fontSize: 14,
            fontWeight: FontWeight.bold
        ),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.shifting,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.tray_fill), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "Profile"),
        ],
      ),
    );
  }
}
