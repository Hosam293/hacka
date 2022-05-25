import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/LoginScreen.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

import '../../../Constant.dart';
import 'HomeSlider.dart';
import 'MyCourses.dart';
import 'Profile.dart';

class NavHome extends StatefulWidget {
  const NavHome({Key? key}) : super(key: key);

  @override
  State<NavHome> createState() => _NavHomeState();
}

class _NavHomeState extends State<NavHome> {
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeSlider(),
    const MyCourses(),
    const Profile(),
  ];
  List <String>title = [
    'Courses',
    'MyCourses' ,
    'Profile' ,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: (title[currentIndex] == 'Courses')? Row(
          children:
          [
            Container(
              alignment: Alignment.bottomCenter,
              height: 39,
              decoration: BoxDecoration(
                color: Color(0xffFF6600),
              ),
              child: const Text(
                'Orange',
                style: TextStyle(
                    color: background
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 3.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    'ODC',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                  ),
                  Text(
                    'EGYPT',style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600
                  ),
                  ),
                ],
              ),
            )
          ],
        ):
        TextWidget(color: (title[currentIndex] == 'MyCourses')? Colors.orange:Colors.black , text: title[currentIndex], fontsize: 30,),
        actions: [
          (title[currentIndex] == 'Profile')
              ? IconButton(
              onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute (
                  builder: (BuildContext context) => const LoginScreen(),
                ),);
              },
              icon: const Icon(
                Icons.logout_outlined,
                color: orange,
              ))
              : IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
              ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.chrome_reader_mode_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_outlined), label: ''),
          ]),
      body: screens[currentIndex],
    );
  }
}
