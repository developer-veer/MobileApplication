// ignore_for_file: camel_case_types

import 'package:bookshop/Model/Factory.dart';
import 'package:bookshop/Model/Sellers.dart';
import 'package:bookshop/db/dbAdder.dart';

class dalManger{

void makeSellerAdd(sellerModel sellerObj)
{
   dbAdder adderObj = Factory.makeDbAdder();

   adderObj.addSeller(sellerObj);


}

}