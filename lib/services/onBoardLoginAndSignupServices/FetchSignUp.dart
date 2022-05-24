import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/SplashOnboardingSignUpLog%20in/LoginScreen.dart';
import 'package:http/http.dart' as http;


var nameController = TextEditingController();
var phoneController = TextEditingController();
var emailController = TextEditingController();
var passwordController = TextEditingController();
var addressController = TextEditingController();
//-------------------------------------------------------------
Future<void> fetchSignUp(
    String email, String password,String name,String phone,String address, BuildContext context) async {
  var url = Uri.parse("https://student.valuxapps.com/api/register");
  var respons = await http.post(url, body: {
    "name": nameController.text,
    "phone": phoneController.text,
    "email": emailController.text,
    "password": passwordController.text,
    "address": addressController.text
  },
  );
  var responsbody = jsonDecode(respons.body);
  if (responsbody["success"] == true) {
    print("hosam");
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => LoginScreen()),
            (Route<dynamic> route) => false);
    final snackBar = const SnackBar(
      content: Text("Succeed"),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  } else {
    print(responsbody["message"]);
    final snackBar = SnackBar(
      content: Text(responsbody["message"]),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

