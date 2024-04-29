import 'package:flutter/material.dart';

import '../../app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.babyPowder,
      child: BottomNavigationBar(
        elevation: 1.0,
        items: _buildBottomNavBarItems(),
        currentIndex: currentIndex,
        selectedItemColor: AppColors.blackCoffee,
        unselectedItemColor: AppColors.celeste,
        onTap: onTap,
      ),
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home, color: Colors.black),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today, color: Colors.black),
        label: 'Calendar',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications, color: Colors.black),
        label: 'Notification',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.check, color: Colors.black),
        label: 'Check-in',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.photo, color: Colors.black),
        label: 'Gallery',
      ),
    ];
  }
}
