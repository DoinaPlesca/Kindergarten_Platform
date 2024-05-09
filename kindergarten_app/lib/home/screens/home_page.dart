import 'package:flutter/material.dart';
import 'package:kindergarten_app/calendar/screens/calendar_screen.dart';
import '../../announcement/widgets/annonc_widget.dart';
import '../../app_colors.dart';
import '../../plan_page.dart';
import '../widgets/custom_bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  final String username;

  HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    PlanListPage(),
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
        backgroundColor:AppColors.babyPowder,
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.celeste,
      elevation: 0.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Welcome, ${widget.username}',
            style: const TextStyle(
              color: AppColors.blackCoffee,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(AppColors.ultraRed),
            ),
            child: const Text(
              'Logout',
              style: TextStyle(
                color: AppColors.blackCoffee,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return _widgetOptions[_selectedIndex];
  }

  CustomBottomNavigationBar _buildBottomNavigationBar() {
    return CustomBottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
