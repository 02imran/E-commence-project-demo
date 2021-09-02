import 'package:flutter/material.dart';
import 'package:login_ui/helpers/themes/themes.dart';
import 'package:login_ui/screens/dashboard_screen.dart';
import 'package:login_ui/screens/login_screen/login_screen.dart';
import 'package:login_ui/screens/profile/Profile_screen.dart';

class BottonNavBar extends StatefulWidget {
  @override
  _BottonNavBarState createState() => _BottonNavBarState();
}

class _BottonNavBarState extends State<BottonNavBar> {
  final _page = [
    DashboardScreen(),
    LoginScreen(),
    ProfilaScreen(),
  ];
  var _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentPage,
        selectedItemColor: kPrimaryColor.withOpacity(.50),
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'LogIn'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onTap: (i) {
          setState(() {
            _currentPage = i;
          });
        },
      ),
      body: _page[_currentPage],
    );
  }
}
