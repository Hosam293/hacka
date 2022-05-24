import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';
import 'package:hackathonapp/view/widgets/splash/FomrRegester.dart';

import '../../../services/onBoardLoginAndSignupServices/FetchSignUp.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: FutureBuilder(
            future:fetchSignUp(emailController.text,passwordController.text,nameController.text,phoneController.text,addressController.text, context),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              return Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ListTile(
                      title: RichText(text: const TextSpan(
                          children: [

                            TextSpan(text: "Hello,",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: black)
                            ),
                            TextSpan(text: " Friend!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: orange)
                            )
                          ]
                      ),),
                      subtitle: Row(
                        children: [
                          TextWidget(text: "Sign Up", color: black, fontsize: 20)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    FormRegester(formKey: formKey),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
