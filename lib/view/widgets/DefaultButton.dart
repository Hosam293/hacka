import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

class DefaultButton extends StatefulWidget {
  String buttName;
  Color buttonColor;
  Color colorName;
  double buttwid;
  VoidCallback onPressed;
  BoxBorder? border;
  DefaultButton({required this.buttName, this.buttonColor=orange, required this.colorName, this.buttwid=double.infinity,required this.onPressed});
  @override
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.buttwid,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),

      ),
      child: MaterialButton(
        onPressed: widget.onPressed
        ,
        child: TextWidget(color: widget.colorName,fontsize:largeButton ,text:'${widget.buttName}' ,),
        color: widget.buttonColor,
        height: 50.0,

      ),
    );
  }
}
