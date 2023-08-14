import 'package:bookshop/AppBar.dart';
import 'package:bookshop/UI/LoginUi.dart';
import 'package:bookshop/UI/runner.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main  () async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyC55pe6KQHZAr_mcRX9oUZNzIk-WomzGZg',
      appId: '1:244223044032:android:2e384db21def375ff94025',
      messagingSenderId: '244223044032',
      projectId: 'readers-5ed5d',
      storageBucket: 'readers-5ed5d.appspot.com',
    )
  );
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
