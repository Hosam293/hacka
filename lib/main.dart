import 'dart:io';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hackathonapp/view/Screens/CourseExam/CourseExam.dart';
import 'package:hackathonapp/view/Screens/CourseExam/ExamScreen.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NavHome.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/LoginScreen.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/Onboard.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/SignUp.dart';
import 'package:hackathonapp/view/widgets/ExamBody.dart';
import 'package:page_transition/page_transition.dart';




class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient CreateHttpClient(SecurityContext context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}


void main() {
  HttpOverrides.global=MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
      ),
      home: AnimatedSplashScreen(
        splash: Center(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/Logo.png",
              height: double.infinity,
              width:  double.infinity,
            ),
          ),
        ),
        nextScreen:   OnBoard(),
        splashIconSize: double.infinity,
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        pageTransitionType: PageTransitionType.bottomToTop,
      ) ,
    );
  }
}

