import 'package:flutter/material.dart';
import 'package:hackathonapp/view/widgets/BackIcon.dart';
import 'package:hackathonapp/view/widgets/CoursesList.dart';

import '../../../Constant.dart';
import '../../widgets/TextWidget.dart';

class WebDev extends StatefulWidget {
  const WebDev({Key? key}) : super(key: key);

  @override
  State<WebDev> createState() => _WebDevState();
}

class _WebDevState extends State<WebDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            TextWidget(text: 'WebDevelopment', color: black, fontsize: subTitleText),

          ],
        ),
        centerTitle: true,
        leading: BackIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              color: lightGray,
              child: TextField(
                style: const TextStyle(
                    color: Color(0xff636363),
                    fontSize: subText,
                    fontWeight: FontWeight.w600),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.search_outlined,
                      size: 30, color: Color(0xff979797)),
                  border: OutlineInputBorder(),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      color: Color(0xff636363),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                onSubmitted: (String value) {
                  print(value);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 3,
                separatorBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsetsDirectional.only(top: 5.0, bottom: 5.0),
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
    );
  }
}
