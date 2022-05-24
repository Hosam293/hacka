import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NavHome.dart';

import '../../../Constant.dart';
import '../../../services/ExamModel.dart';

class ScoreScreen extends StatefulWidget {
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();
}

class _ScoreScreenState extends State<ScoreScreen> {
  QuestionController _qnController = Get.put(QuestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text(
          'New Courses',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(
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
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/icons/bg.svg", fit: BoxFit.cover,width: MediaQuery.of(context).size.width,),
          Column(
            children: [
              Spacer(flex: 1),
              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3
                    ?.copyWith(color: black),
              ),
              Spacer(),
              Text(
                "${_qnController.correctAns * 10}/${_qnController.questions.length * 10}",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: black),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}
