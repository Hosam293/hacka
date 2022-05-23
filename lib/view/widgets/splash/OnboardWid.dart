import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/Categories.dart';

class OnboardWid extends StatefulWidget {
String introImage;

OnboardWid({required this.introImage});

  @override
  State<OnboardWid> createState() => _OnboardWidState();
}

class _OnboardWidState extends State<OnboardWid> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset(
              "${widget.introImage}",
              fit: BoxFit.cover,
              // height: double.infinity,
              // width: double.infinity,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Learn a lot of courses in Orange Education",
            style:TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,

          ),
        ],
      ),
    );
  }
}
