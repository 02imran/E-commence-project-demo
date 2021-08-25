import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/helpers/constants/constants.dart';
import 'package:login_ui/screens/login_screen/components/divider.dart';
import 'package:login_ui/components/user_text_form.dart';
import 'package:login_ui/screens/login_screen/components/header_text.dart';

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
              UserTextForm(
                icondata: Icon(Icons.person),
                hintText: kNameText,
              ),
              SizedBox(height: 10),
              UserTextForm(
                icondata: Icon(Icons.phone),
                hintText: kPhoneText,
              ),
              SizedBox(height: 10),
              UserTextForm(
                icondata: Icon(Icons.email),
                hintText: kEmailText,
              ),
              SizedBox(height: 10),
              UserTextForm(
                icondata: Icon(Icons.lock),
                icon: Icon(Icons.remove_red_eye),
                hintText: kPasswordText,
              ),
              SizedBox(height: 20),
              CustomeButton(
                text: 'Sign up',
                color: Color(0xFF027A60),
                textColor: Colors.white,
              ),
              SizedBox(height: 10),
              Devider(),
              SizedBox(height: 10),
              CustomeButton(
                text: 'Sign in',
                color: Colors.white,
                textColor: Colors.black,
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
