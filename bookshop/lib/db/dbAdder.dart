// ignore_for_file: camel_case_types

import 'package:bookshop/Model/Factory.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

import '../Model/Sellers.dart';

class dbAdder {
  Future<void> addSeller(sellerModel sellerDto) async {
    try {
      //await Firebase.initializeApp(); // Initialize Firebase if not already done

      await FirebaseFirestore.instance.collection('sellers').add({
        'Name': sellerDto.name,
        'Email': sellerDto.email,
        'Contact': sellerDto.contact,
        'Address': sellerDto.address
      });

      print("Seller added successfully!");
    } catch (error) {
      print("Error adding seller: $error");
    }
  }

}
