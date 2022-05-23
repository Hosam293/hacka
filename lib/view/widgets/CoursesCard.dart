import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  String courseImages;

  CourseCard({required this.courseImages, required this.courseNames});

  String courseNames;

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 260,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(
                '${widget.courseImages}',
              ),
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          'Web Development',
          style: TextStyle(
            color: Colors.orange,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Container(
          width: 200,
          child: Text(
            '${widget.courseNames}',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            maxLines: 2,
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          children: [
            Text(
              'Ahmed ABaza',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff979797)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 5,
                height: 5,
                decoration: BoxDecoration(
                    color: Color(0xff979797),
                    shape: BoxShape.circle),
              ),
            ),
            Text(
              '15 Hours',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff979797)),
            ),
          ],
        )
      ],
    );
  }
}
