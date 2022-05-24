import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hackathonapp/view/Screens/HomeCategoryMyCourses/NavHome.dart';
import 'package:http/http.dart' as http;


var emailController = TextEditingController();
var passwordController = TextEditingController();
//-------------------------------------------------------------

Future<void> fetchLogin(String email, String password, BuildContext context) async {
  var url = Uri.parse("https://5742-196-205-94-85.eu.ngrok.io/api/v1/login");
  var response = await http.post(url, body: {
    'email': emailController.text,
    'password': passwordController.text,
  },
  );
  var responsbody = jsonDecode(response.body);
  if (responsbody["success"] == true) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) =>
        NavHome())
    );
    final snackBar=SnackBar(
      content: Text("successfully"),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }  else{
    print(responsbody["message"]);
    final snackBar=SnackBar(
      content: Text(responsbody["message"]),
      behavior: SnackBarBehavior.floating,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

// -------------------------End -----------------------------

