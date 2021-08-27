import 'package:flutter/material.dart';
import 'package:login_ui/screens/login_screen/components/header_text.dart';
import 'package:login_ui/screens/sign_up/components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              HeaderText(text: 'Create \nAccount'),
              SizedBox(height: 30),
              SignUpForm(),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
