
import 'package:flutter/material.dart';

class AnimatedBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

   AnimatedBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      fixedColor:Color(0xff7FB04F) ,
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.window),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_settings_sharp),
          label: 'Courses',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}