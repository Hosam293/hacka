import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

class CoursesList extends StatefulWidget {

  @override
  State<CoursesList> createState() => _CoursesListState();
}

class _CoursesListState extends State<CoursesList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: const DecorationImage(
                  image: AssetImage('assets/images/unsplash.jpg'),
                  fit: BoxFit.cover),
            )),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              child: TextWidget(text: 'Learn UI/UX for Beginners', color: black, fontsize: subTitleText),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextWidget(text: 'Ahmed ABaza', color: subTitleGray, fontsize: 15),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                        color: Color(0xff979797), shape: BoxShape.circle),
                  ),
                ),
                TextWidget(text: '15 Hours', color: subTitleGray, fontsize: 15),

              ],
            )
          ],
        )
      ],
    );
  }
}
