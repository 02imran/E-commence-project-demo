import 'package:flutter/material.dart';

class UserTextForm extends StatelessWidget {
  const UserTextForm({
    Key? key,
    required this.icondata,
    this.icon,
    this.hintText,
  }) : super(key: key);

  final Icon? icondata;
  final Icon? icon;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        validator: (val) {},
        decoration: InputDecoration(
            prefixIcon: icondata,
            suffixIcon: icon,
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(vertical: 15)),
      ),
    );
  }
}
