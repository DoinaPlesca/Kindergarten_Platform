import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kindergarten_app/announcement/bloc/announc_bloc.dart';
import 'package:kindergarten_app/announcement/bloc/announc_state.dart';
import 'package:kindergarten_app/app_colors.dart';


class CustomBottomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  _CustomBottomNavigationBarState createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0.7, end: 1.3).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AnnouncementBloc, AnnouncementState>(
      builder: (context, state) {
        bool showNotification = false;
        if (state is Loaded && state.showNotificationDot) {
          showNotification = true;
        }

        return BottomNavigationBar(
          elevation: 1.0,
          items: _buildBottomNavBarItems(showNotification),
          currentIndex: widget.currentIndex,
          selectedItemColor: AppColors.accentGreen,
          unselectedItemColor: AppColors.black,
          onTap: widget.onTap,
        );
      },
    );
  }

  List<BottomNavigationBarItem> _buildBottomNavBarItems(bool showNotification) {
    return <BottomNavigationBarItem>[
      const BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profile',

      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.calendar_today),
        label: 'Calendar',
      ),
      BottomNavigationBarItem(
        icon: Stack(
          children: [
            const Icon(Icons.notifications),
            if (showNotification)
              Positioned(
                right: 0,
                child: ScaleTransition(
                  scale: _animation,
                  child: const Icon(
                    Icons.circle,
                    color: AppColors.accentRed,
                    size: 12,
                  ),
                ),
              ),
          ],
        ),
        label: 'Notification',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.photo),
        label: 'Gallery',
      ),
    ];
  }
}
