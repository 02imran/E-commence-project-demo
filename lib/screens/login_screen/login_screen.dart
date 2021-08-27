import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen/components/sign_in_form.dart';
import 'components/header_text.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderText(text: 'Welcome \nBack'),
              SizedBox(
                height: 90,
              ),
              SignInForm(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
