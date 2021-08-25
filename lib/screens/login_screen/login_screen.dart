import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/screens/login_screen/components/sign_in_form.dart';
import 'package:login_ui/screens/sign_up/signup_screen.dart';
import 'components/divider.dart';
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
              SizedBox(height: 20),
              SizedBox(height: 10),
              Devider(),
              SizedBox(height: 10),
              CustomeButton(
                text: 'Sign up',
                color: Colors.white,
                textColor: Colors.black,
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
              ),
              // SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
