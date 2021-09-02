import 'package:flutter/material.dart';
import 'package:login_ui/screens/forgot_screen/components/forgot_body.dart';

import 'package:login_ui/screens/login_screen/components/header_text.dart';

class ForgotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderText(text: 'Welcome \nBack'),
              ForgotBody(),
            ],
          ),
        ),
      ),
    );
  }
}
