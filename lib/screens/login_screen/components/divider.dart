import 'package:flutter/material.dart';

class Devider extends StatelessWidget {
  const Devider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
          child: Divider(
        color: Colors.black,
      )),
      Text(" or "),
      Expanded(
          child: Divider(
        color: Colors.black,
      )),
    ]);
  }
}
