import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NavHome.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/LoginScreen.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/SignUp.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';
import 'package:hackathonapp/view/widgets/splash/OnboardWid.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoard extends StatefulWidget {
  const OnBoard({Key? key}) : super(key: key);

  @override
  State<OnBoard> createState() => _OnBoardState();
}

class _OnBoardState extends State<OnBoard> {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children:
            [

              Container(
                height:400 ,
                child: PageView(
                  controller: _controller,
                  children: [
                    OnboardWid(introImage: 'assets/images/illustration.png'),
                    OnboardWid(introImage: 'assets/images/illustrations2.png'),
                    OnboardWid(introImage: 'assets/images/illustrations3.png'),

                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ScrollingDotsEffect(
                  activeDotColor: orange,
                  dotColor: orange.withOpacity(0.3),dotWidth: 10,dotHeight: 10,

                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(

                children: [
                  Expanded(
                    child: DefaultButton(
                      buttName: "Join now ",
                      colorName: background,
                      onPressed: ()
                      {
                        // Navigator.pushAndRemoveUntil(context, MaterialPageRoute (
                        //   builder: (BuildContext context) => const NavHome(),
                        // ));
                        Navigator.pushAndRemoveUntil<void>(
                           context,
                            MaterialPageRoute<void>(builder: (BuildContext context) => const SignUp()),
                            ModalRoute.withName('/'),);                      },
                      buttwid: 15,
                      buttonColor: orange,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: DefaultButton(
                      buttName: 'Log in ',
                      colorName: orange,
                      buttonColor: background,
                      onPressed: ()
                      {
                        Navigator.pushAndRemoveUntil<void>(
                          context,
                          MaterialPageRoute<void>(builder: (BuildContext context) => const LoginScreen()),
                          ModalRoute.withName('/'),);
                      },
                    ),
                  ),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }

}
