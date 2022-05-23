import 'package:flutter/material.dart';

class TextWidButt extends StatelessWidget {
  String text;

  TextWidButt({required this.text, required this.color, required this.fontsize});


  Color color;
  double fontsize;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: FontWeight.w600,
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.end,
    );
  }
}
