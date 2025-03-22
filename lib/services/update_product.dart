import 'package:store_app/helper/api.dart';
import 'package:store_app/models/get_all_product_model.dart';

class UpdateProduct {
  Future<productModel> updateProduct(
      {required String title,
      required String desc,
      required String price,
      required String image}) async {
    Map<String, dynamic> data =
        await Api().post(url: 'https://fakestoreapi.com/products', body: {
      'title': title,
      'description': desc,
      'price': price,
      'image': image,
    });
    return productModel.fromJson(data);
  }
}
