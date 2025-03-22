// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app/Widgets/CostumCard.dart';
import 'package:store_app/models/get_all_product_model.dart';
import 'package:store_app/services/get_all_product.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  static String id = 'homePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Store App',
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.only(left: 8, right: 8, top: 16),
          child: FutureBuilder<List<productModel>>(
              future: AllProductService().GetAllProducts(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List<productModel> products = snapshot.data!;
                  return GridView.builder(
                      itemCount: products.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10),
                      itemBuilder: (context, index) {
                        return customCard(product: products[index]);
                      });
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              }),
        ));
  }
}
