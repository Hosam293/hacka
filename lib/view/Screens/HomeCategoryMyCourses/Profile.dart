import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              'assets/images/Ellipse 10.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            TextWidget(
                text: 'Ahmed Abaza', color: black, fontsize: subTitleText),
            SizedBox(
              height: 10,
            ),
            Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
                child: TextWidget(
                    text: 'Ahmedabaza@gmail.com',
                    color: disable,
                    fontsize: 20)),
            SizedBox(
              height: 10,
            ),
            Container(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                    text: 'My Achievement', color: black, fontsize: 15)),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => SizedBox(
                  height: 10,
                ),
                itemCount: 2,
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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: TextWidget(
                              text: 'Learn UI/UX for beginners',
                              color: black,
                              fontsize: subTitleText),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        TextWidget(
                            text: 'Achieved April 21 2022',
                            color: lightGray,
                            fontsize: 12)
                      ],
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
