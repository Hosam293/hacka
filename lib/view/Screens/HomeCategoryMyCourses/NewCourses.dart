import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/WidgetNavHome/BackIcon.dart';
import 'package:hackathonapp/view/widgets/WidgetNavHome/CoursesList.dart';

import '../../widgets/TextWidget.dart';

class NewCourses extends StatefulWidget {
  const NewCourses({Key? key}) : super(key: key);

  @override
  State<NewCourses> createState() => _NewCoursesState();
}

class _NewCoursesState extends State<NewCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: TextWidget(text: 'New Courses', color: black, fontsize: subTitleText),
        centerTitle: true,
        leading: BackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) =>
                    Padding(
                      padding: const EdgeInsetsDirectional.only(top: 5.0,bottom: 5.0),
                      child: Container(
                        color: Color(0xff979797),
                        height: 1,
                        width: double.infinity,
                      ),
                    ),
                itemBuilder: (BuildContext context, int index) => CoursesList(),
              ),
            )
          ],
        ),
      ),
    ) ;
  }
}
