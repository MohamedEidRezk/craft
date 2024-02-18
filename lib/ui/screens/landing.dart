import 'package:craft/ui/screens/message.dart';
import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';
import 'In_store_and_online_workshops/courses&workshop.dart';
import 'customer_profile/profile.dart';
import 'home_customer/customer_category.dart';
import 'home_customer/customer_home_page.dart';

class Landing extends StatefulWidget {
   Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
     CustomerHomePage(),
     CustomerCategory(),
     CoursesAndWorkshop(),
     Message(),
     CustomerProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: AnimatedBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _screens[_selectedIndex],
    );
  }
}
