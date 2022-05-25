import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/WidgetNavHome/BackIcon.dart';
import 'package:hackathonapp/view/widgets/WidgetNavHome/CateCard.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: TextWidget(text: 'Categories', color: black, fontsize: subTitleText),
        centerTitle: true,
        leading: BackIcon(),
      ),
      body: GridView.builder(
        itemCount: catImages.length,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) => CateCard(
          catImages: catImages[index],
          catNames: catNames[index],
        ),
      ),
    );
  }
}
