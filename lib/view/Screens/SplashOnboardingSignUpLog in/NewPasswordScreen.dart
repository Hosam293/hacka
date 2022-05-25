import 'package:flutter/material.dart';
import 'package:hackathonapp/Constant.dart';
import 'package:hackathonapp/view/widgets/DefaultButton.dart';

class NewPasswordScreen extends StatelessWidget {
  NewPasswordScreen({Key? key}) : super(key: key);

  var controller = TextEditingController();
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
        title: Text('Create New Password',
            style: TextStyle(color: Colors.black, fontSize: 19)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  "assets/images/lock.png",
                  height: 197,
                  width: 197,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Enter your new password',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(height: 40),
              Container(
                width: 335,
                height: 50,
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
                      labelText: 'New Password',
                      labelStyle: TextStyle(color: lightGray)),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: 335,
                height: 50,
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
                      labelText: 'Confirm Password',
                      labelStyle: TextStyle(color: lightGray)),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 335,
                height: 50,
                child: DefaultButton(buttName: 'submit', onPressed: () {  }, colorName: background,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}