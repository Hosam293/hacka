import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/CodeScreen.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

class ForgetPassScreen extends StatelessWidget {
  ForgetPassScreen({Key? key}) : super(key: key);

  var controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: background,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: TextWidget(
            text: 'Forgot Password', color: black, fontsize: subTitleText),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/lock.png',
                  height: 197,
                  width: 197,
                ),
              ),
              const SizedBox(height: 40),
              TextWidget(
                  text:
                      'Please enter your email address to \n recieve vervication code',
                  color: black,
                  fontsize: subText),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 55,
                child: TextFormField(
                  controller: controller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(color: lightGray)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      labelText: 'Email',
                      labelStyle: TextStyle(color: lightGray)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              DefaultButton(
                  colorName: background,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const CodeScreen(),
                      ),
                    );
                  },
                  buttName: 'Send'),
            ],
          ),
        ),
      ),
    );
  }
}
