import 'package:flutter/material.dart';

class MyContainer {
  Container myContainer() {
    return Container(
      height: 140,
      width: 90,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10.0),
        image: const DecorationImage(image: AssetImage('assets/pic.jpeg') , fit: BoxFit.cover)
      ),


    );
  }
}
