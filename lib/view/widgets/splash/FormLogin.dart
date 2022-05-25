import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/ForgetPassScreen.dart';

import '../../../Constant.dart';
import '../../../services/onBoardLoginAndSignupServices/FetchLogin.dart';
import '../../Screens/HomeCategoryMyCourses/NavHome.dart';
import '../../Screens/SplashOnboardingSignUpLog in/SignUp.dart';

class FormLogin extends StatefulWidget {
  var formKey;

  FormLogin({this.formKey});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty ||
                  !RegExp(r'^[\w-\,]+@[\w-]+[\w-]{2,4}').hasMatch(value)) {
                return "This field is required";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              // this text plucholder in butten
                hintText: " Email",
                hintStyle: const TextStyle(
                  color: Color(0xffa7a7a7),
                ),
                // icone befor text email

                //this broder betton email
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(width: 1.0, color: black)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      width: 1.0,
                      color: black,
                    ))),
          ),
          const SizedBox(
            height: 35,
          ),
          // text pass up button
          TextFormField(
            controller: passwordController,
            // here is check
            validator: (value) {
              if (value!.isEmpty || value.length < 6) {
                return "This field is pass required";
              } else {
                return null;
              }
            },
            // onSaved: (value) => passwordcontroller.text = value!,

            decoration: InputDecoration(
                hintText: " Password",
                hintStyle: const TextStyle(
                  color: Color(0xffa7a7a7),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(width: 1.0, color: black)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:  BorderSide(
                      width: 1.0,
                      color: black,
                    ))),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 15,
                  color: orange,
                  decoration: TextDecoration.underline,
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>  ForgetPassScreen()),
                );
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Center(
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  print('click');
                  if (widget.formKey.currentState!.validate()) {
                    print('Validate');
                    print(emailController.text);
                    print(passwordController.text);
                    fetchLogin(
                        '{$emailController}', '{$passwordController}', context);
                    Navigator.pushAndRemoveUntil<void>(
                      context,
                      MaterialPageRoute<void>(builder: (BuildContext context) => const NavHome()),
                      ModalRoute.withName('/'),);
                  }
                },
                child: const Text(
                  " Login ",
                  style: TextStyle(
                    color: black,
                    fontSize: 15,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.only(
                      left: 110, right: 110, top: 15, bottom: 15),
                  primary: orange,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t Have an Account? ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: orange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
