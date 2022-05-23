import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

class Exams extends StatefulWidget {
  const Exams({Key? key}) : super(key: key);

  @override
  State<Exams> createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
  final int _duration = 50;
  final CountDownController _controller = CountDownController();
  final int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: background,
        elevation: 0.0,
        title: TextWidget(
            text: 'Course Exam', color: black, fontsize: subTitleText),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                    text: 'Question $number/10',
                    color: black,
                    fontsize: subTitleText),
                // /10 eb2a shofha
                CircularCountDownTimer(
                    ringColor: orange,
                    width: 40,
                    duration: _duration,
                    fillColor: lightGray,
                    height: 40,
                    autoStart: false,
                  isReverse: false,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            TextWidget(
                text: 'What is the user experience?',
                color: paragraph,
                fontsize: subTitleText),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(8),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: orange, width: 2, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextWidget(
                        text:
                            'The user experience is how the developer feels about a user.',
                        color: black,
                        fontsize: subText),
                  ),
                  Container(
                    height: 40,
                    width: 30,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: orange),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            DefaultButton(
              buttName: 'Next',
              colorName: background,
              buttonColor: orange,
              buttwid: MediaQuery.of(context).size.width / 4,
              onPressed: () {
                 setState(() {
                   _controller.start(); // ama btegy trbot m3 el 3daaad
                 });
              },
            )
          ],
        ),
      ),
    );
  }
}
