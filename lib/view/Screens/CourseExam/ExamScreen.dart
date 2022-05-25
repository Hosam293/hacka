import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/services/ExamModel.dart';
import 'package:hackathonapp/view/Screens/CourseExam/ScoreScreen.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

import '../../widgets/CourseDetailsWidgets/ExamBody.dart';


class ExamScreen extends StatefulWidget {
  const ExamScreen({Key? key}) : super(key: key);

  @override
  State<ExamScreen> createState() => _ExamScreenState();
}

class _ExamScreenState extends State<ExamScreen> {
  QuestionController _questionController = Get.put(QuestionController());
  QuestionController _controller = Get.put(QuestionController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: TextWidget(color: black, fontsize: subTitleText, text: 'Course Exam',),
        centerTitle: true,
      ),
      body: ExamBody(),
    );
  }
}
