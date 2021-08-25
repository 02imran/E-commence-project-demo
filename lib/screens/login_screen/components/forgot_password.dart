import 'package:flutter/material.dart';
import 'package:login_ui/screens/forgot_screen/forget_screen.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ForgotScreen()));
      },
      child: Text(
        'Forgot Password?',
        style: TextStyle(color: Color(0xFF027A60), fontWeight: FontWeight.bold),
      ),
    );
  }
}
