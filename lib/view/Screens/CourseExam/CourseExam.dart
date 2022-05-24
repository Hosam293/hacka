import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/Screens/CourseExam/ExamScreen.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NavHome.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';


class CourseExam extends StatefulWidget {
  const CourseExam({Key? key}) : super(key: key);

  @override
  State<CourseExam> createState() => _CourseExamState();
}

class _CourseExamState extends State<CourseExam> {





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: TextWidget(text: 'New Courses', color: black, fontsize: subTitleText),
        centerTitle: true,
        leading:  IconButton(
          icon:  Icon(
              Icons.arrow_back,
              color: black),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) =>  NavHome(),
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextWidget(text: "Learn UI/UX for Beginners", color: black, fontsize: subText),
            const SizedBox(height: 15,), //1/6
            Container(
              child: Image.asset(
                "assets/images/illustrationExam.png",
                fit: BoxFit.cover,
                height: 200,
                width: 200,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextWidget(text: "Start your exam", color: black, fontsize: subText),
            const SizedBox(height:15,),
            TextWidget(text: "Make Sure to Achieve More Than 60% ", color: black, fontsize: subText),

            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(text: "Exam Time", color: black, fontsize: subText),
                TextWidget(text: "1 Hr", color: black, fontsize: subText),


              ],
            ),
            const SizedBox(height: 35,),
            DefaultButton(buttName: 'Start', colorName: background, onPressed: ()
            {
              // Navigator.pushAndRemoveUntil<void>(
              //   context,
              //   MaterialPageRoute<void>(builder: (BuildContext context) => const ExamScreen()),
              //   ModalRoute.withName('/'),
              // );
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) =>  const ExamScreen(),
                ),
              );
            }
            ),
          ],
        ),
      ),
    );
  }
}
