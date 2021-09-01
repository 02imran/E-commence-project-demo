import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/helpers/constants/constants.dart';
import 'package:login_ui/screens/login_screen/components/divider.dart';
import 'package:login_ui/screens/login_screen/login_screen.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remembere = false;
  final List<String> errors = [];

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();



  signUp() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: _emailController.text,
        password: _passwordController.text,
      );

      var authCradintial = userCredential.user;
      await _firestore.collection('users').doc(_auth.currentUser!.uid).set({
        'name': _nameController.text,
        'email': _emailController.text,
        'phone': _phoneController.text,
        "uid": _auth.currentUser!.uid,
      });

      if (authCradintial!.uid.isNotEmpty) {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => LoginScreen()));
      } else {
        Fluttertoast.showToast(msg: 'Something is wrong');
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Fluttertoast.showToast(msg: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        Fluttertoast.showToast(
            msg: 'The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            buildNameFormField(),
            SizedBox(height: 10),
            buildPhoneFormField(),
            SizedBox(height: 10),
            buildEmailFormField(),
            SizedBox(height: 10),
            buildPasswordFormField(),
            SizedBox(height: 20),
            CustomButtonNew(
              text: 'Sign up',
              color: Color(0xFF027A60),
              textColor: Colors.white,
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
                signUp();
                // sentUserDataToDB();
              },
            ),
            SizedBox(height: 10),
            Devider(),
            SizedBox(height: 10),
            CustomButtonNew(
              text: 'Sign in',
              color: Colors.white,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      controller: _nameController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: 'Enter Your name',
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Icon(Icons.person),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      controller: _phoneController,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'Enter your number',
        contentPadding: EdgeInsets.symmetric(vertical: 15),
        prefixIcon: Icon(Icons.phone),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: _passwordController,
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
      controller: _emailController,
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
