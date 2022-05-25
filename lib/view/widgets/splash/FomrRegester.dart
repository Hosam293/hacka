import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/LoginScreen.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/SignUp.dart';
import 'package:hackathonapp/view/widgets/TextWidButton.dart';
import 'package:hackathonapp/view/widgets/TextWidget.dart';

import '../../../Constant.dart';
import '../../../services/onBoardLoginAndSignupServices/FetchSignUp.dart';

class FormRegester extends StatefulWidget {
var formKey;

FormRegester({this.formKey});

  @override
  State<FormRegester> createState() => _FormRegesterState();
}

class _FormRegesterState extends State<FormRegester> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      padding: const EdgeInsets.only(left: 5, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          //------------ text Name up button------------------------
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty || !RegExp('').hasMatch(value)) {
                  return "Please Complete Form";
                } else {
                  return null;
                }
              },
              controller: nameController,
              decoration: InputDecoration(
                  fillColor: black,
                  hintText: "Full Name",
                  hintStyle: const TextStyle(
                    color: formColor,
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.account_circle_outlined,
                    color: formColor,
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                        width: 1.0,
                        color: black,
                      )
                  )
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty ||
                    !RegExp(r'^[\w-\,]+@[\w-]+[\w-]{2,4}')
                        .hasMatch(value)) {
                  return "Please Complete Form";
                } else {
                  return null;
                }
              },
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "Enter Your Email",
                  hintStyle: const TextStyle(
                    color: formColor,
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: formColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                        width: 1.0,
                        color: black,
                      )
                  )
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          //-----------------------end Email fild--------

          // text pass up button

          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty || value.length < 8) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  hintStyle: const TextStyle(
                    color: formColor,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: formColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                        width: 1.0,
                        color: black,
                      )
                  )
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 35,
          ),

          // ------------------Start phone fild---------
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty || !RegExp("").hasMatch(value)) {
                  return "Please Complete Form";
                } else {
                  return null;
                }
              },
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "Enter Your Phone",
                  hintStyle: const TextStyle(
                    color: formColor,
                  ),
                  prefixIcon: const Icon(
                      Icons.phone,
                      color: formColor
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                        width: 1.0,
                        color: black,
                      )
                  )
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty || !RegExp("").hasMatch(value)) {
                  return "Please Complete Form";
                } else {
                  return null;
                }
              },
              controller: addressController,
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                  hintText: "Location",
                  hintStyle: const TextStyle(
                    color: formColor,
                  ),
                  prefixIcon: const Icon(
                    Icons.add_location,
                    color: formColor,
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  const BorderSide(
                        width: 1.0,
                        color: black,
                      )
                  )
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(

              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 20,
                top: 20,
                bottom: 20,
              ),
              child: Row(
                children: [
                  TextWidget(text: "Don't have an account yet ?", color: black, fontsize: largeButton),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    child:  TextWidButt(text: "Privacy Policy", color: orange, fontsize: largeButton),

                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const SignUp()),
                      );
                    },
                  ),
                ],
              )
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                if (widget.formKey.currentState!.validate()){
                  // print(emailController.text);
                  // print(passwordController.text);
                  // print(nameController.text);
                  // print(phoneController.text);
                  // print(addressController.text);
                  fetchSignUp('{$emailController}','{$passwordController}','{$nameController}','{$phoneController}','{$addressController}',context);
                  Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(builder: (BuildContext context) => const LoginScreen()),
                    ModalRoute.withName('/'),);
                }
              },
              child:  TextWidget(text: " SIGN UP", color: background, fontsize: subText),

              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: 110, right: 110, top: 15, bottom: 15),
                primary: orange,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // ------------------strat text Login ---------\
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(text: "Already Have an Account? ", color: black, fontsize: subText),

                  const SizedBox(width: 10,),
                  GestureDetector(

                    child:TextWidButt(color:orange ,fontsize: subText,text: "Login",),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()),
                      );
                    },
                  ),
                ],
              )
          ),

        ],
      ),
    );
  }
}
