import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:statemanagement_work/Models/all_products_model.dart';

class ProductsProvider with ChangeNotifier {
  Future fetchAllProducts() async {
    List appP = [];
    String url = "https://fakestoreapi.com/products";

    Dio dio = Dio();

    var response = await dio.get(url);
    if (response.statusCode == 200) {
      var map = response.data as Map;

      List data = map as List;
      for (var element in data) {
        appP.add(AllProducts.fromJson(element));
      }
      notifyListeners();
    }
    // return appP;
   throw Exception("e");
  }
}
