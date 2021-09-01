import 'package:flutter/material.dart';
import 'package:login_ui/components/custom_button.dart';
import 'package:login_ui/helpers/themes/themes.dart';
import 'package:login_ui/screens/login_screen/login_screen.dart';

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
          'https://firebasestorage.googleapis.com/v0/b/demoproject-d4964.appspot.com/o/undraw_Hello_re_3evm.png?alt=media&token=777e64c7-e23e-431f-8c1c-8dcb34c9593f'
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/demoproject-d4964.appspot.com/o/undraw_Job_hunt_re_q203.png?alt=media&token=ebebf75b-d023-4a32-9563-74d56c782714'
    },
    {
      'image':
          'https://firebasestorage.googleapis.com/v0/b/demoproject-d4964.appspot.com/o/undraw_Sync_files_re_ws4c.png?alt=media&token=96327d60-824d-4796-80c1-fe0289e7eb4f'
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
                press: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => LoginScreen()));
                },
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
