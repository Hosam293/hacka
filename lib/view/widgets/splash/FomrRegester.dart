import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/LoginScreen.dart';

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
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      padding: EdgeInsets.only(left: 5, right: 10),
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
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: nameController,
              decoration: InputDecoration(
                  fillColor: black,
                  // this text plucholder in butten
                  hintText: "Full Name",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.account_circle_outlined,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
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
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // this text plucholder in butten
                  hintText: "Enter Your Email",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
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
                // this text plucholder in butten
                  hintText: "Enter Your Password",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
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
          //-----------------text pass up button ---------------

          // ------------------Start phone fild---------
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty || !RegExp("").hasMatch(value)) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                // this text plucholder in butten
                  hintText: "Enter Your Phone",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                      Icons.phone,
                      color: Color(0xffd0d0d0)
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
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
          // ------------------end phone fild---------

          // ------------------Start addres fild---------
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff8f8f8),
                borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              validator: (value) {
                if (value!.isEmpty || !RegExp("").hasMatch(value)) {
                  return "This field is required";
                } else {
                  return null;
                }
              },
              controller: addressController,
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                // this text plucholder in butten
                  hintText: "Enter Your Phone",
                  hintStyle: const TextStyle(
                    color: Color(0xffd0d0d0),
                  ),
                  // icone befor text email
                  prefixIcon: const Icon(
                    Icons.add_location,
                    color: Color(0xffd0d0d0),
                  ),
                  //this broder betton email
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
                          width: 1.0,
                          color: black
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:  BorderSide(
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
          // ------------------strat text Privacy Policy ---------\
          Container(

              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 20,
                top: 20,
                bottom: 20,
              ),
              child: Row(
                children: [
                  const Text(
                    "Don't have an accont yet ?",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: const Text(
                      "Privacy Policy",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.bold,
                        color: orange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    // onTap: () {
                    //   Navigator.of(context).push(
                    //     MaterialPageRoute(
                    //         builder: (context) => const Regester()),
                    //   );
                    // },
                  ),
                ],
              )
          ),
          // ------------------end  text Privacy Policy ---------\

          // ------------------button Sign UP fild---------\
          Center(
            child: Container(
              child: ElevatedButton(
                onPressed: () {
                  print('click');
                  if (widget.formKey.currentState!.validate()){
                    print('Validate');
                    print(emailController.text);
                    print(passwordController.text);
                    print(nameController.text);
                    print(phoneController.text);
                    print(addressController.text);
                    fetchSignUp('{$emailController}','{$passwordController}','{$nameController}','{$phoneController}','{$addressController}',context);
                    Navigator.pushAndRemoveUntil<void>(
                      context,
                      MaterialPageRoute<void>(builder: (BuildContext context) => const LoginScreen()),
                      ModalRoute.withName('/'),);
                  }
                },
                child: const Text(
                  " SIGN UP",
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
          // ------------------strat text Login ---------\
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
                    "Already Have an Account? ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: black),
                  ),
                  SizedBox(width: 10,),
                  GestureDetector(
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight:FontWeight.bold,
                        color: orange,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ],
              )
          ),
          // ------------------end  text Login ---------\
        ],
      ),
    );
  }
}
