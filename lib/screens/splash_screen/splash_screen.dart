

import 'package:flutter/material.dart';

import 'package:login_ui/screens/splash_screen/components/splash_body.dart';

class SplashScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // ScreenSize().init(context);
    return Scaffold(
      body: SplashBody(),
    );
  }
}