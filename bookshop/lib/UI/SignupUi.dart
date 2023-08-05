import 'package:bookshop/UI/TextFieldFile.dart';
import 'package:bookshop/UI/runner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupUi {
  TextFieldClass textFactory = TextFieldClass();

  SafeArea SignUp(BuildContext context) {
    return SafeArea(
        child: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SignUp",
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.8,
                      color: Colors.blue,
                      fontFamily: 'ArchivoBlack'),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
                width: 270,
                child: textFactory.makeTextField(
                    "Enter Name", const Icon(Icons.person))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: SizedBox(
                width: 270,
                child: textFactory.makeTextField(
                    "Email", const Icon(Icons.email))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270,
                child: textFactory.makeTextField(
                    "Contact", const Icon(Icons.phone))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270,
                child: textFactory.makeTextField(
                    "Address", const Icon(Icons.home))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270, child: textFactory.passTextField("Password")),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270,
                child: textFactory.passTextField("Confirm Password")),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                width: 270,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                        return SignIn();
                      }));
                    }, child: const Text("Signup")),
              ))
        ],
      ),
    ));
  }
}
