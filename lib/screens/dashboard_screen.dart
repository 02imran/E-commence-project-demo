import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/screens/home_screen.dart';
import 'package:login_ui/screens/login_screen/login_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  signOut() async {
    await FirebaseAuth.instance.signOut().then((value) => Navigator.of(context)
        .pushAndRemoveUntil(MaterialPageRoute(builder: (_) => LoginScreen()),
            (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
          actions: [
            GestureDetector(
              onTap: () {
                signOut();
              },
              child: Icon(Icons.logout),
            ),
          ],
        ),
        drawer: Drawer(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('This is the Drawer'),
              ],
            ),
          ),
        ),
        body: Center(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: Center(child: Text('Book Menu 01  ')),
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: Center(child: Text('Book Menu 02 ')),
                  ),
                ),
                Container(
                  height: 200,
                  width: 200,
                  child: Card(
                    child: Center(child: Text('Book Menu 02 ')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
