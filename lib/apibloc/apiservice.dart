

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:bloceggggggg/apibloc/productmodel.dart';

class ApiServices {
  Future<List<Products>?> fetchProducts() async {
    var response = await http.get(Uri.parse(" "));

    if (response.statusCode == 200) {
      var jsonnn = jsonDecode(response.body);
      var productss = ProductModel.fromJson(jsonnn);

      var studentlist = productss.products;
      return studentlist;
    } else {
      throw Exception("error");
    }
  }
}