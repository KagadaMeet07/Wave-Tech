import 'package:e_commerce_app/Home_Page.dart';
import 'package:e_commerce_app/Navigation%20Bar/ProfilePage.dart';
import 'package:e_commerce_app/Navigation%20Bar/top_categories.dart';
import 'package:e_commerce_app/Screens/LoginPage.dart';
import 'package:e_commerce_app/main.dart';
import 'package:flutter/material.dart';

import 'CartPage.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    TopCategories(),
    Cart(),
    ProfilePage(),

    // New page for the fourth item
  ];

  _changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _selectedIndex,
        onTap: (index) => _changeTab(index),
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

    );
  }
}
