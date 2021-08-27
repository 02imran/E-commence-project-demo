import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:login_ui/screens/splash_screen/splash_screen.dart';
=======
import 'package:login_ui/screens/dashboard_screen.dart';
import 'package:login_ui/screens/home_screen.dart';
>>>>>>> e4e88e76b0acd1a6b56fbfb0aeea4656567166e6

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
<<<<<<< HEAD
      home: SplashScreen(),
=======
      home: DashboardScreen(),
>>>>>>> e4e88e76b0acd1a6b56fbfb0aeea4656567166e6
    );
  }
}
