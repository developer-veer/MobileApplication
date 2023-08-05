import 'package:flutter/material.dart';

class AppBarClass{
  AppBar BookAppBar() {
    return AppBar(
      title: const Text("Bookshop" ,  style: TextStyle(color: Colors.white , fontFamily: 'Lugrasimo')),
      backgroundColor: Colors.blueAccent,
    );
  }
}
