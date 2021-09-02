

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/screens/login_screen/login_screen.dart';

class ForgotBody extends StatefulWidget {

  @override
  _ForgotBodyState createState() => _ForgotBodyState();
}

class _ForgotBodyState extends State<ForgotBody> {
  TextEditingController _resetController = TextEditingController();

  resetPassword() async {
    var _firebase = await FirebaseAuth.instance
        .sendPasswordResetEmail(email: _resetController.text)
        .then((value) => Navigator.push(
            context, MaterialPageRoute(builder: (_) => LoginScreen())));
    return _firebase;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    SizedBox(height: 300),
                    buildEmailFormField(),
                    SizedBox(height: 15),
                    CustomButtonNew(
                      text: 'Reset Password',
                      color: Color(0xFF027A60),
                      textColor: Colors.white,
                      press: (){
                        resetPassword();
                      },
                    )
                  ],
                ),
              );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: _resetController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Enter Your name',
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Icon(Icons.person),
      ),
    );
  }
}