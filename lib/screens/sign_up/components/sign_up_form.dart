import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/components/user_text_form.dart';
import 'package:login_ui/helpers/constants/constants.dart';
import 'package:login_ui/screens/login_screen/components/divider.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomButtonNew(
            text: 'Sign up',
            color: Color(0xFF027A60),
            textColor: Colors.white,
          ),
        ),
        SizedBox(height: 10),
        Devider(),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: CustomButtonNew(
            text: 'Sign in',
            color: Colors.white,
            textColor: Colors.black,
          ),
        ),
      ],
    );
  }
}
