import 'package:flutter/material.dart';

class BackIcon extends StatefulWidget {
  const BackIcon({Key? key}) : super(key: key);

  @override
  State<BackIcon> createState() => _BackIconState();
}

class _BackIconState extends State<BackIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(Icons.arrow_back,size: 25,color: Colors.black,), onPressed: ()
    {
      return Navigator.pop(context);
    },);
  }
}
