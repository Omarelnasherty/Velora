import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/get_all_product_model.dart';

class AllProductService {
  Future<List<productModel>> GetAllProducts() async {
    http.Response response =
        await http.get(Uri.parse('https://fakestoreapi.com/products'));

    List<dynamic> data = jsonDecode(response.body);

    List<productModel> productsList = [];

    for (int i = 0; i < data.length; i++) {
      productsList.add(
        productModel.fromJson(
          data[i],
        ),
      );
    }
    return productsList;
  }
}
