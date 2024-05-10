import 'package:flutter/material.dart';
import 'package:kindergarten_app/calendar/screens/calendar_screen.dart';
import 'package:kindergarten_app/children/screen/children_page.dart';
import 'package:kindergarten_app/profile/widgets/profile_app_bar_title.dart';
import '../../announcement/widgets/annonc_widget.dart';
import '../../app_colors.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class ProfilePage extends StatefulWidget {
  final String username;
  final List<dynamic> children;
  final String jwt;

  ProfilePage({
    Key? key,
    required this.username,
    required this.children,
    required this.jwt,
  }) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  List<Widget> get _widgetOptions => <Widget>[
    ChildrenPage(children: widget.children),
    CalendarScreen(),
    NotificationPage(),
    /*CheckInPage(),*/
    /*GalleryPage(),*/
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: _buildBody(),
        backgroundColor: AppColors.babyPowder,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.celeste,
      elevation: 0.0,
      title: ProfileAppBarTitle(
        username: widget.username,
        jwt: widget.jwt,
      ),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Expanded(child: _widgetOptions[_selectedIndex]),
      ],
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
