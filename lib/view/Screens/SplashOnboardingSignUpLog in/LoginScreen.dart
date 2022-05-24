import 'package:flutter/material.dart';

import '../../../Constant.dart';
import '../../../services/onBoardLoginAndSignupServices/FetchLogin.dart';
import '../../widgets/splash/FormLogin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
              key: formKey,
              child: FutureBuilder(
                future: fetchLogin(
                    emailController.text, passwordController.text, context),
                builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                  return Padding(
                    padding: const EdgeInsets.all( 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Image.asset(
                            "assets/images/Logo.png",
                            fit: BoxFit.cover,
                            width: 120,
                          ),
                        ),

                        ListTile(
                          title: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Welcome ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: black)),
                              TextSpan(
                                  text: " Back!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: orange))
                            ]),
                          ),
                          subtitle: Text(
                            "Login",
                            style: TextStyle(
                              color: black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        FormLogin(formKey: formKey),
                      ],
                    ),
                  );
                },
              )),
        ),
      ),
    );
  }
}
