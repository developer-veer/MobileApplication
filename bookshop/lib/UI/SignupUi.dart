import 'package:bookshop/Controller/bookShopController.dart';
import 'package:bookshop/Model/Factory.dart';
import 'package:bookshop/UI/TextFieldFile.dart';
import 'package:bookshop/UI/runner.dart';
import 'package:flutter/material.dart';
import 'package:bookshop/Model/Sellers.dart';

class SignupUi {
  bookShopContrl? contrlObj;
  sellerModel? sellerDto = Factory.makeSellerObj();

  SignupUi() {
    contrlObj = Factory.makeContrlObj();
  }

  TextFieldClass nameField = TextFieldClass();
  TextFieldClass emailField = TextFieldClass();
  TextFieldClass contactField = TextFieldClass();
  TextFieldClass addressField = TextFieldClass();
  TextFieldClass passField = TextFieldClass();
  TextFieldClass confirmPassField = TextFieldClass();

  SafeArea signUp(BuildContext context) {
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
                child: nameField.makeTextField(
                    "Enter Name", const Icon(Icons.person))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: SizedBox(
                width: 270,
                child:
                    emailField.makeTextField("Email", const Icon(Icons.email))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270,
                child: contactField.makeTextField(
                    "Contact", const Icon(Icons.phone))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270,
                child: addressField.makeTextField(
                    "Address", const Icon(Icons.home))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270,
                child: passField.passTextField(
                    "Password", const Icon(Icons.remove_red_eye))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12),
            child: SizedBox(
                width: 270,
                child: confirmPassField.passTextField(
                    "Confirm Password", const Icon(Icons.remove_red_eye))),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: SizedBox(
                width: 270,
                child: ElevatedButton(
                    onPressed: () {
                      bindingData(); //this method take text's from text-fields.and  Assign the values
                      //send dto object to controller
                      contrlObj?.signUpSeller(sellerDto!);

                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return SignIn();
                      }));
                    },
                    child: const Text("Signup")),
              ))
        ],
      ),
    ));
  }

  void bindingData() {
    sellerDto?.name = nameField.Controller().text;
    sellerDto?.email = emailField.Controller().text;
    sellerDto?.contact = contactField.Controller().text;
    sellerDto?.address = addressField.Controller().text;

  }
}
