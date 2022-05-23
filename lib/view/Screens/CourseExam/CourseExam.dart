import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/BackIcon.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';
import 'package:status_change/status_change.dart';


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
        title: TextWidget(text: 'Course Exam', color: black, fontsize: subTitleText),
        centerTitle: true,
        leading: BackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
          [
            // StatusChange.tileBuilder(
            //   theme: StatusChangeThemeData(
            //     direction: Axis.horizontal,
            //     connectorTheme:
            //     ConnectorThemeData(space: 1.0, thickness: 1.0),
            //   ),
            //   builder: StatusChangeTileBuilder.connected(
            //     itemWidth: (_) =>
            //     MediaQuery.of(context).size.width / 3,
            //     contentWidgetBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(15.0),
            //         child: Text(
            //           'add content here',
            //           style: TextStyle(
            //             color: Colors
            //                 .blue, // change color with dynamic color --> can find it with example section
            //           ),
            //         ),
            //       );
            //     },
            //     nameWidgetBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(20),
            //         child: Text(
            //           'your text ',
            //           style: TextStyle(
            //             fontWeight: FontWeight.bold,
            //             color: Colors.green,
            //           ),
            //         ),
            //       );
            //     },
            //     indicatorWidgetBuilder: (_, index) {
            //       if (index <= 3) {
            //         return DotIndicator(
            //           size: 35.0,
            //           border: Border.all(color: Colors.green, width: 1),
            //           child: Padding(
            //             padding: const EdgeInsets.all(6.0),
            //             child: Container(
            //               decoration: BoxDecoration(
            //                 shape: BoxShape.circle,
            //                 color: Colors.green,
            //               ),
            //             ),
            //           ),
            //         );
            //       } else {
            //         return OutlinedDotIndicator(
            //           size: 30,
            //           borderWidth: 1.0,
            //           color: Colors.green,
            //         );
            //       }
            //     },
            //
            //     itemCount: 3,
            //   ),
            // ),,
            TextWidget(text: 'Learn UI/UX for Beginners', color: black, fontsize: subText),
            const SizedBox(
              height: 12,
            ),
            Image.asset('assets/images/illustrationExam.png',
            height: 220,
              width: 330,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 12,
            ),
            TextWidget(text: 'Start your exam', color: black, fontsize: subTitleText),
            const SizedBox(
              height: 12,
            ),
            TextWidget(text: 'Make Sure to Achieve More Than 60%', color: black, fontsize: subText),

            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:
              [
                TextWidget(text: 'Exam Time', color: black, fontsize: subText),
                TextWidget(text: '1 Hr', color: black, fontsize: subText),



              ],
            ),
            const SizedBox(
              height: 12,
            ),
            DefaultButton(buttName: 'start', colorName: Colors.white, onPressed: () {  },)
            

          ],
        ),
      ),
    );
  }
}
