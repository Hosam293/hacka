import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/CourseDetails/CourseDetails.dart';
import 'package:hackathonapp/view/widgets/WidgetNavHome/CoursesList.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

import '../../../Constant.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  State<MyCourses> createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                itemBuilder: (BuildContext context, int index) => Row(
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 200,
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
                      ),
                    ),
                    Container(
                      color: lightGray,
                      width: 30,
                      height: 30,
                      child: IconButton(
                          onPressed: ()
                          {
                            Navigator.push(context, MaterialPageRoute (
                              builder: (BuildContext context) => const CourseDetails(),
                            ));
                          },
                          icon: Icon(Icons.arrow_forward,size:20,color: Colors.black,)),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
