import 'package:bookshop/AppBar.dart';
import 'package:bookshop/UI/LoginUi.dart';
import 'package:bookshop/UI/runner.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BookShop());
}

class BookShop extends StatelessWidget {
  BookShop({super.key});

  //MyContainer container = MyContainer();
  AppBarClass appBar = AppBarClass();

  //create object of Row Class


  @override
  Widget build(BuildContext context) {

    Login obj = Login();
    //obj.LoginScreen(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home:SignIn(),
      );
  }
}
