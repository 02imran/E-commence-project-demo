
import 'package:flutter/material.dart';

class Devider extends StatelessWidget {
  const Devider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 30),
      child: Row(children: <Widget>[
        Expanded(child: Divider(color: Colors.black,)),
        Text(" or "),
        Expanded(child: Divider(color: Colors.black,)),
      ]),
    );
  }
}