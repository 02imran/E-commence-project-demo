import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/helpers/constants/constants.dart';
import 'package:login_ui/screens/login_screen/components/header_text.dart';
import 'package:login_ui/components/user_text_form.dart';

class ForgotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeaderText(text: 'Welcome \nBack'),
          SizedBox(height: 300),
          UserTextForm(
            icondata: Icon(Icons.email),
            hintText: kEmailText,
          ),
          SizedBox(height: 15),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: CustomButtonNew(
              text: 'Reset Password',
              color: Color(0xFF027A60),
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
