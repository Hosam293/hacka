import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/WebDev.dart';

import '../Screens/HomeCategoryMyCourses/Categories.dart';

class CateCard extends StatefulWidget {
  String catImages;
  String catNames;

  CateCard({required this.catImages, required this.catNames});
  @override
  State<CateCard> createState() => _CateCardState();
}

class _CateCardState extends State<CateCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute (
          builder: (BuildContext context) => const WebDev(),
        ));
      },
      child: Container(
        width: 80,
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: Container(
                alignment: Alignment.center,
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        '${widget.catImages}',
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '${widget.catNames}',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                  fontWeight: FontWeight.w600

              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
