import 'package:bookshop/Controller/bookShopController.dart';
import 'package:bookshop/Model/Sellers.dart';
import 'package:bookshop/db/DALlManager.dart';
import 'package:bookshop/db/dbAdder.dart';

class Factory{

 static sellerModel makeSellerObj()
  {
    return sellerModel();
  }

  static bookShopContrl makeContrlObj()
  {
    return bookShopContrl();
  }

  static dalManger makeDalManagerObj()
  {
    return dalManger();
  }

  static dbAdder makeDbAdder()
  {
    return dbAdder();
  }
}