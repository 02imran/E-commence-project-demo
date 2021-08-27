import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/helpers/constants/constants.dart';
import 'package:login_ui/screens/sign_up/signup_screen.dart';

import 'divider.dart';
import 'forgot_password.dart';
import 'form_error.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remembere = false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: 10),
            buildPasswordFormField(),
            SizedBox(height: 10),
            FormError(errors: errors),
            ForgotPassword(),
            SizedBox(height: 10),
            CustomButtonNew(
              color: Color(0xFF027A60),
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                }
              },
              text: 'Log in',
            ),
            SizedBox(height: 10),
            Devider(),
            SizedBox(height: 10),
            CustomButtonNew(
              text: 'Sign up',
              color: Colors.white,
              textColor: Colors.black,
              press: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()));
              },
            )
            // CustomeButton(
            //   text: 'Log in',
            //   color: Color(0xFF027A60),
            //   textColor: Colors.white,
            //   press: () {
            //     if (_formKey.currentState!.validate()) {
            //       _formKey.currentState!.save();
            //       Navigator.push(context,
            //           MaterialPageRoute(builder: (context) => SignUpScreen()));
            //     }
            //   },
            // ),
          ],
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(
            () {
              errors.remove(kPassNullError);
            },
          );
        } else if (value.length >= 8 && errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kShortPassError);
          });
        }

        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(
            () {
              errors.add(kPassNullError);
            },
          );
          return '';
        } else if (value.length < 8 && !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kShortPassError);
          });
          return '';
        }

        return null;
      },
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
        hintText: 'Enter Your Password',
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Icon(Icons.lock),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(kAddressNullError)) {
          setState(
            () {
              errors.remove(kEmailNullError);
            },
          );
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(kAddressNullError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }

        return null;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kAddressNullError)) {
          setState(
            () {
              errors.add(kEmailNullError);
            },
          );
          return '';
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kAddressNullError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return '';
        }

        return null;
      },
      decoration: InputDecoration(
        hintText: 'Enter Your Email',
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Icon(Icons.email),
      ),
    );
  }
}
