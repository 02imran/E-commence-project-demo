
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key, this.text,
  }) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80,left: 20),
      
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      
      decoration: BoxDecoration(color: Color(0xFF02B28C)),
      child: Text(text!,style: TextStyle(color: Colors.white,
      fontSize: 30,fontWeight: FontWeight.bold),),
    );
  }
}