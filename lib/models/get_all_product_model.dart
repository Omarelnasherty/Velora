// ignore_for_file: camel_case_types

class productModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rate;
  productModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image,
      required this.rate});

  factory productModel.fromJson(JsonDate) {
    return productModel(
        id: JsonDate['id'],
        title: JsonDate['title'],
        price: JsonDate['price'],
        description: JsonDate['description'],
        category: JsonDate['category'],
        image: JsonDate['image'],
        rate: RatingModel.fromJson(JsonDate['Rating']));
  }
}

class RatingModel {
  final double rate;
  final int count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromJson(JsonDate) {
    return RatingModel(rate: JsonDate['rate'], count: JsonDate['count']);
  }
}
