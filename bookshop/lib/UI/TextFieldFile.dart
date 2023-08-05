import 'package:flutter/material.dart';

class TextFieldClass {
  var email = TextEditingController();
  var pass = TextEditingController();
  bool val = true;
  TextField emailTextField() {
    return TextField(
        controller: email,

        decoration: InputDecoration(
          hintText: 'email',

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blueAccent)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.email))));
  }

  TextField passTextField(String txt) {
    return TextField(

        controller: pass,
        obscureText:val,
        decoration: InputDecoration(
          hintText: txt,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Colors.blue)),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          suffixIcon:
              IconButton(onPressed: () {}, icon: Icon(Icons.remove_red_eye)),
        ));
  }

  TextField makeTextField(String hintTxt , Widget icon) {
    return TextField(
        controller: email,

        decoration: InputDecoration(
            hintText:hintTxt,

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blueAccent)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: IconButton(onPressed: () {}, icon: icon)));
  }


}
