import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/NewPasswordScreen.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';
// import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';

import '../../../Constant.dart';

class CodeScreen extends StatefulWidget {
  const CodeScreen({Key? key}) : super(key: key);

  @override
  State<CodeScreen> createState() => _CodeScreenState();
}

class _CodeScreenState extends State<CodeScreen>  {
  var controller = TextEditingController();
  int otpCodeLength = 4;
  bool isLoadingButton = false;
  bool enableButton = false;
  String otpCode = "";

  onOtpCallBack(String otpCode, bool isAutofill) {
    setState(() {
      this.otpCode = otpCode;
      if (otpCode.length == otpCodeLength && isAutofill) {
        enableButton = false;
        isLoadingButton = true;
      } else if (otpCode.length == otpCodeLength && !isAutofill) {
        enableButton = true;
        isLoadingButton = false;
      } else {
        enableButton = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Verify Your Email',
          style: TextStyle(color: Colors.black, fontSize: 19),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/lock.png',
                height: 197,
                width: 197,
              ),
              SizedBox(height: 40),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                      text: 'please enter the 4-digit code sent to ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'hossamjamal@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: orange,
                          ),
                          //textAlign: TextAlign.center,
                        ),
                      ])),
              SizedBox(height: 47),

              // TextFieldPin(
              //   textController: controller,
              //   codeLength: otpCodeLength,
              //   alignment: MainAxisAlignment.center,
              //   defaultBoxSize: 56.0,
              //   margin: 10,
              //   selectedBoxSize: 60.0,
              //   textStyle: TextStyle(fontSize: 25),
              //   defaultDecoration: BoxDecoration(
              //     color: Colors.grey[300],
              //     borderRadius: BorderRadius.circular(15.0),
              //   ),
              //   onChange: (code) {
              //     onOtpCallBack(code, false);
              //   },
              // ),
              Container(
                width: 335,
                height: 55,
                child: DefaultButton(buttName: 'Verify', onPressed: () {
                  Navigator.push(context, MaterialPageRoute (
                    builder: (BuildContext context) =>  NewPasswordScreen(),
                  ),);
                }, colorName: background,)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
