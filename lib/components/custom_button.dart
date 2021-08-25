import 'package:flutter/material.dart';
import 'package:login_ui/helpers/themes/themes.dart';

class CustomeButton extends StatelessWidget {
  const CustomeButton({
    Key? key,
    @required this.text,
    this.color,
    this.textColor,
    this.press,
  }) : super(key: key);
  final String? text;
  final Color? color, textColor;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: MaterialButton(
        disabledColor: color,
        disabledElevation: 5,
        disabledTextColor: textColor,
        focusElevation: 5,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        onPressed: press,
        textColor: textColor,
        minWidth: double.infinity,
        height: 40,
        child: Text(text!),
      ),
    );
  }
}

class CustomButtonNew extends StatelessWidget {
  const CustomButtonNew({Key? key, this.press, this.text, this.color})
      : super(key: key);
  final GestureTapCallback? press;
  final String? text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 40,
        width: double.infinity,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(color: white),
          ),
        ),
      ),
    );
  }
}
