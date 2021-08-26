import 'package:flutter/material.dart';

class CustomButtonNew extends StatelessWidget {
  const CustomButtonNew(
      {Key? key, this.press, this.text, this.color, this.textColor})
      : super(key: key);
  final GestureTapCallback? press;
  final String? text;
  final Color? color, textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black.withOpacity(0.2)),
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
