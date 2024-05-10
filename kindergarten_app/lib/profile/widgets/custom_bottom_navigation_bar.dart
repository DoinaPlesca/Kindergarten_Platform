import 'package:flutter/material.dart';
import '../../app_colors.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 1.0,
      backgroundColor: AppColors.celeste,
      items: _buildBottomNavBarItems(),
      currentIndex: currentIndex,
      selectedItemColor: AppColors.ultraRed,
      unselectedItemColor: AppColors.blackCoffee,
      onTap: onTap,
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today),
        label: 'Calendar',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        label: 'Notification',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.check),
        label: 'Check-in',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.photo),
        label: 'Gallery',
      ),
    ];
  }
}
