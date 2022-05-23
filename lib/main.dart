import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathonapp/view/Screens/CourseExam/Exams.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NavHome.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/Onboard.dart';
import 'package:page_transition/page_transition.dart';


import 'view/Screens/CourseExam/CourseExam.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HackathonApp',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      home: NavHome() ,
    );
  }
}

// AnimatedSplashScreen(
// splash: Center(
// child: Align(
// alignment: Alignment.center,
// child: Image.asset(
// "assets/images/Logo.png",
// height: double.infinity,
// width:  double.infinity,
// ),
// ),
// ),
// nextScreen:  NavHome(),
// splashIconSize: double.infinity,
// splashTransition: SplashTransition.fadeTransition,
// duration: 3000,
// pageTransitionType: PageTransitionType.bottomToTop,
// )