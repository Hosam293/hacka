import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
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
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Page view  with scroll point
            Expanded(
              child: PageView(
                controller: _controller,
                children: [OnboardWid(introImage: 'assets/images/illustration.png'),OnboardWid(introImage: 'assets/images/illustrations2.png'),OnboardWid(introImage: 'assets/images/illustrations3.png')],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ScrollingDotsEffect(
                activeDotColor: Colors.orange,
                dotColor: Colors.orange.withOpacity(0.3),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultButton(buttName: "Join now " ,  colorName: background, onPressed: () {  },),
                SizedBox(width: 40,),
                DefaultButton(buttName: 'Log in ', colorName: orange,buttonColor:background, onPressed: () {  } ,),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
