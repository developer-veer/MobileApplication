import 'package:bookshop/Container.dart';
import 'package:flutter/cupertino.dart';

class BookRow{

  MyContainer con1 = MyContainer();


  // ignore: non_constant_identifier_names
  Row BookShopRow() {
    return Row(
      children: [
        Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(child: con1.myContainer())),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(child: con1.myContainer())),
        Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(child: con1.myContainer())),
      ],
    );
  }
}
