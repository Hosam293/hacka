import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
String text;

TextWidget({required this.text, required this.color, required this.fontsize});


  Color color;
double fontsize;
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: FontWeight.w600,
      ),

    );
  }
}
