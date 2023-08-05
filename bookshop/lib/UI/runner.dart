import 'package:bookshop/UI/SignupUi.dart';
import 'package:flutter/material.dart';

import 'LoginUi.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  Login loginObj = Login();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(child: loginObj.LoginScreen(context)),
    );
  }
}

class Signup extends StatelessWidget {
  Signup({super.key});
  SignupUi signupObj = SignupUi();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: signupObj.SignUp(context)) ,
    );
  }
}

