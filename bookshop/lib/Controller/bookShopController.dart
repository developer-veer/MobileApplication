// ignore_for_file: camel_case_types

import 'package:bookshop/Model/Factory.dart';
import 'package:bookshop/Model/Sellers.dart';

import '../db/DALlManager.dart';

class bookShopContrl{
  void signUpSeller(sellerModel sellerObj) {
    dalManger dalObj = Factory.makeDalManagerObj();

    dalObj?.makeSellerAdd(sellerObj);

  }
}
