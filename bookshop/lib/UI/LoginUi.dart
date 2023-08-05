import 'package:bookshop/UI/RowFile.dart';
import 'package:bookshop/UI/TextFieldFile.dart';
import 'package:bookshop/UI/runner.dart';
//import 'package:bookshop/UI/TextFieldFile.dart';
//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login {
  RowClass rowObj = RowClass();

  // ignore: non_constant_identifier_names
  Container LoginScreen(BuildContext context) {
    return Container(
      height: 760,
      width: 360,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(241, 90, 34, 2.1),
          border: Border.all(style: BorderStyle.solid, width: 2.1)),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Stack(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: const BoxDecoration(
                          color: Colors.amberAccent, shape: BoxShape.circle,
                        image: DecorationImage(fit: BoxFit.cover, image: AssetImage('assets/book.png'))
                      ),
                    )
                  ],
                )),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: rowObj.loginTxt()),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.0),
                child: rowObj.TxtField()),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 1.0),
                child: rowObj.TxtField2()),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(onPressed: () {}, child: const Text("Login")),
                const SizedBox(
                    width:
                        20), //this sizebox is used for smpacing in login and signup buttons
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return Signup();
                      }));
                    },
                    child: const Text("Signup"))
              ]),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 1.0),
                child: Text(
                  'if you not an account ?',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontStyle: FontStyle.normal,
                      fontSize: 20,
                      decorationColor: Colors.blue),
                )),
          ],
        ),
      ),
    );
  }
}
