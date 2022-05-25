
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hackathonapp/view/widgets/CourseDetailsWidgets/questionCard.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';


import '../../../Constant.dart';
import '../../../services/ExamModel.dart';
class ExamBody extends StatelessWidget {

  final int _duration = 50;
  final CountDownController _controller = CountDownController();
  final int number = 1;

  @override
  Widget build(BuildContext context) {
    // So that we have acccess our controller
    QuestionController _questionController = Get.put(QuestionController());
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(
                  () => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                TextSpan(
                      text:
                      "Question ${_questionController.questionNumber.value}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          ?.copyWith(color: black),
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: black),
                        ),
                      ],
                ),

              ),
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
            ),


            Expanded(
              child: PageView.builder(

                physics: NeverScrollableScrollPhysics(),
                controller: _questionController.pageController,
                onPageChanged: _questionController.updateTheQnNum,
                itemCount: _questionController.questions.length,
                itemBuilder: (context, index) => QuestionCard(
                    question: _questionController.questions[index]),
              ),
            ),
            DefaultButton(buttName: 'next', colorName: background, onPressed: (){})
          ],
        ),
      ),
    );
  }
}
