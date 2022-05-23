
import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/services/Apis.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/Categories.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NewCourses.dart';
import 'package:hackathonapp/view/widgets/CoursesCard.dart';
import 'package:hackathonapp/view/widgets/TextWidButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

import '../../widgets/CateCard.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({Key? key}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Card(
                  color: Color(0xff1B1816),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        TextWidget(text: 'Enter the code to get your course', color: background, fontsize: subTitleText),


                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey,
                                ),
                                child: TextField(
                                  style: const TextStyle(
                                      color: subTitleGray,
                                      fontSize: subText,
                                      fontWeight: FontWeight.w600),
                                  decoration:  InputDecoration(
                                    hintText: "Enter Code",
                                    hintStyle: const TextStyle(
                                      color: Color(0xffd0d0d0),
                                    ),


                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:  BorderSide(
                                            width: 1.0,
                                            color: Colors.black
                                        )
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:  BorderSide(
                                          width: 1.0,
                                          color: Colors.black,
                                        )
                                    )
                                ),
                                  onSubmitted: (String value) {
                                    print(value);
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: orange),
                                  child: const Icon(
                                    Icons.arrow_forward_outlined,
                                    size: heading,
                                    color: background,
                                  )),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'Top Categories', color: black, fontsize: subTitleText),


                  TextButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute (
                          builder: (BuildContext context) => const Categories(),
                        ));
                      },
                      child: Row(
                        children: [
                          TextWidButt(text: 'See all', color: orange, fontsize: paragraphFont)

                        ],
                      ))
                ],
              ),
              FutureBuilder(builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot)
              {
                return Container(
                  height: 140,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                      width: 30,
                    ),
                    itemBuilder: (BuildContext context, int index) => CateCard(catImages:catImages[index] ,catNames: catNames[index]),
                    itemCount: catImages.length,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              },
              future: Apis.getAllCat()),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'New Courses', color: black, fontsize: subTitleText),

                  TextButton(
                      onPressed: ()
                      {
                        Navigator.push(context, MaterialPageRoute (
                          builder: (BuildContext context) => const NewCourses(),
                        ));
                      },
                      child: TextWidButt(text: 'See all', color: orange, fontsize: paragraphFont)
                  )
                ],
              ),
              SizedBox(
                height: 400,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) => CourseCard(courseImages: courseImages[index], courseNames: courseNames[index
                  ]),
                  itemCount: courseNames.length,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(
                        width: 5,
                      ),
                  scrollDirection: Axis.horizontal,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
