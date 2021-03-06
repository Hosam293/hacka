import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/services/Apis.dart';
import 'package:hackathonapp/view/Screens/CourseDetails/CourseDetails.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/Categories.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NewCourses.dart';
import 'package:hackathonapp/view/widgets/WidgetNavHome/CoursesCard.dart';
import 'package:hackathonapp/view/widgets/TextWidButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

import '../../widgets/WidgetNavHome/CateCard.dart';

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
                        TextWidget(text: 'Enter the code to get your course',
                            color: background,
                            fontsize: subTitleText),


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
                                  decoration: InputDecoration(
                                      hintText: "Enter Code",
                                      hintStyle: const TextStyle(
                                        color: Color(0xffd0d0d0),
                                      ),


                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          borderSide: BorderSide(
                                              width: 1.0,
                                              color: Colors.black
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          borderSide: BorderSide(
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
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (
                                          BuildContext context) => const CourseDetails()));
                                },
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
                              ),
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
                  TextWidget(text: 'Top Categories',
                      color: black,
                      fontsize: subTitleText),


                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => const Categories(),
                        ));
                      },
                      child: Row(
                        children: [
                          TextWidButt(text: 'See all',
                              color: orange,
                              fontsize: paragraphFont)

                        ],
                      ))
                ],
              ),
              Consumer(builder: (BuildContext context, cate, Widget? child) {
                bool get = false;
                var getviewcategot;
                if(get){
                  getviewcategot = cate(apigetCateg);
                }else{
                  getviewcategot = cate(apigetCateg)..getdatacategors();
                  get = true;
                }

                return Container(
                  height: 140,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(
                      width: 30,
                    ),
                    itemBuilder: (BuildContext context, int index) =>
                        CateCard(catImages: getviewcategot
                            .listDataModel[index].image_url


                            , catNames: getviewcategot
                                .listDataModel[index].category_name),
                    itemCount: getviewcategot.listDataModel.length,
                    scrollDirection: Axis.horizontal,
                  ),
                );
              },),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(text: 'New Courses',
                      color: black,
                      fontsize: subTitleText),

                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (BuildContext context) => const NewCourses(),
                        ));
                      },
                      child: TextWidButt(text: 'See all',
                          color: orange,
                          fontsize: paragraphFont)
                  )
                ],
              ),
              SizedBox(
                height: 400,
                child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) =>
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (
                                BuildContext context) => const CourseDetails(),
                          ));
                        },
                        child: CourseCard(courseImages: courseImages[index],
                            courseNames: courseNames[index
                            ]),
                      ),
                  itemCount: courseNames.length,
                  separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                      width: 5,
                      // Image.network(
                      //   image_url +
                      //       getviewcategot
                      //           .listDataModel[index].image_url,
                      //   color: colorTxetOrange,
                      // )
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
