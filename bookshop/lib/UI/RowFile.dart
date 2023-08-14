import 'package:bookshop/UI/TextFieldFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowClass {
  TextFieldClass txtObj = TextFieldClass();

  Row appName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          child: const Text("Being Reader",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
        )
      ],
    );
  } //end of AppName Method

  Row loginTxt() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 70,
          height: 32,
          child: Text("Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
        )
      ],
    );
  }

  Row TxtField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 260,
          height: 70,
          child: txtObj.makeTextField("Email", const Icon(Icons.email)),
        )
      ],
    );
  }

  Row TxtField2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 260,
          height: 70,
          child:
              txtObj.passTextField("Password", Icon(Icons.remove_red_eye)),
        )
      ],
    );
  }

  TextFieldClass txtFieldCLass() {
    return txtObj;
  }
}
