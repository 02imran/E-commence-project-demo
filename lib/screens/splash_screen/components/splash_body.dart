import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/helpers/themes/themes.dart';

import 'splash_dot.dart';

class SplashBody extends StatefulWidget {
  @override
  _SplashBodyState createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  int _currentPage = 0;
  List splashData = [
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/flutterfirebase-826b1.appspot.com/o/undraw_Online_chat_re_c4lx.png?alt=media&token=79485730-f394-4585-ab5d-6a6834c2d42f'
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/flutterfirebase-826b1.appspot.com/o/undraw_portfolio_feedback_6r17.png?alt=media&token=5c9f067c-1681-4bdd-a533-fd38a854f41f'
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/flutterfirebase-826b1.appspot.com/o/undraw_web_shopping_re_owap.png?alt=media&token=fca285ae-c2f3-4b32-b0ce-d2cc82cfb16c'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Welcome',
              style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
              flex: 1,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    _currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => Image.network(
                  splashData[index]['image'],
                ),
              ),
            ),
            SplashDot(splashData: splashData, currentPage: _currentPage),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomButtonNew(
                text: 'Continue',
                color: kPrimaryColor,
                textColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
