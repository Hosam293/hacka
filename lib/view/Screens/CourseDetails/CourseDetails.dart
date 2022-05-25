import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

class CourseDetails extends StatefulWidget {
  const CourseDetails({Key? key}) : super(key: key);

  @override
  State<CourseDetails> createState() => _CourseDetailsState();
}

class _CourseDetailsState extends State<CourseDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Container(
                      height: 200,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/images/unsplash.jpg',
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff000000),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_outlined,
                                size: 20,
                                color: background,
                              ))),
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                    text: 'Learn UI/UX for beginners',
                    color: black,
                    fontsize: subTitleText),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                    text: 'Author: Ahmed Abaza',
                    color: subTitleGray,
                    fontsize: subText),
                const SizedBox(
                  height: 5,
                ),
                DefaultButton(
                    buttName: 'Start Course',
                    colorName: background,
                    onPressed: () {}),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    alignment: Alignment.bottomLeft,
                    child: TextWidget(
                        text: 'About this Course',
                        color: black,
                        fontsize: subText)),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    alignment: Alignment.bottomLeft,
                    child: TextWidget(
                        text:
                            'Welcome to your UX Design for Beginners Course. In the following tutorials, youll get a thorough introduction to UX design, from its definition, areas and origins through to the skills you need to build a professional portfolio and become a UX designer',
                        color: paragraph,
                        fontsize: paragraphFont)),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.leaderboard_outlined,
                      color: orange,
                      size: subText,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextWidget(
                        text: 'Beginner Level', color: black, fontsize: subText)
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: orange,
                      size: subText,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    TextWidget(text: 'Cairo', color: black, fontsize: subText)
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                    alignment: Alignment.bottomLeft,
                    child: TextWidget(
                        text: 'You may be interested in',
                        color: black,
                        fontsize: subText)),
                const SizedBox(
                  height: 10,
                ),

                Container(
                  height: 120.0,
                  child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) => Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(
                          width: 180,
                          child: TextWidget(
                              text: 'Learn UI/UX for Beginners',
                              color: black,
                              fontsize: subTitleText),
                        ),
                        const SizedBox(
                          height: 5.0,
                        )
                      ],
                    ),
                    itemCount: 2,
                    separatorBuilder: (BuildContext context, int index) =>
                        const SizedBox(
                      width: 5.0,
                    ),
                    scrollDirection: Axis.horizontal,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
