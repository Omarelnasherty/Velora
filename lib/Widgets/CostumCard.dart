import 'package:flutter/material.dart';
import 'package:store_app/models/get_all_product_model.dart';

class customCard extends StatelessWidget {
  customCard({
    required this.product,
    super.key,
  });
  productModel product;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          child: Card(
            elevation: 8,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'product.title',
                    style: const TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'product.price.toString()',
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 73,
          right: 25,
          child: Image.network(
              'https://image26.stylesimo.com/o_img/2018/05/09/254398-10543166/vintage-solid-leather-handbag-cross-body-women-shoulder-bag-with-tassels.jpg'),
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}
