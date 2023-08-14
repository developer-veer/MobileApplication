import 'package:flutter/material.dart';

class TextFieldClass {
  var cont = TextEditingController();
  var pass = TextEditingController();
  bool val = true;

  TextField passTextField(String txt , Widget icon) {
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
              IconButton(onPressed: () {}, icon: icon),
        ));
  }

  TextField makeTextField(String hintTxt , Widget icon){

    return TextField(
        controller: cont,

        decoration: InputDecoration(
            hintText:hintTxt,

            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.blueAccent)),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            suffixIcon: IconButton(onPressed: () {}, icon: icon)));
  }

  TextEditingController Controller()
  {
    return cont;
  }
}
