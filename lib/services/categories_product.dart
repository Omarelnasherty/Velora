import 'package:store_app/helper/api.dart';
import 'package:store_app/models/get_all_product_model.dart';

class CategoriesProduct {
  Future<List<productModel>> categoryProduct(
      {required String categoryProduct}) async {
    List<dynamic> data = await Api().get(
        url: 'https://fakestoreapi.com/products/category/$categoryProduct');

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
