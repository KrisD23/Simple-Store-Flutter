import 'package:flutter/material.dart ';
import 'package:minimal_ecommerce_app_yt/components/my_drawer.dart';
import 'package:minimal_ecommerce_app_yt/components/my_product_tile.dart';
import 'package:minimal_ecommerce_app_yt/models/product.dart';
import 'package:minimal_ecommerce_app_yt/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // access product in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shop Page"),
      ),
      drawer: MyDrawer(),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          // get each individual product from shop
          final product = products[index];

          // return as a product tile UI
          return MyProductTile(product: product);
        },
      ),
    );
  }
}
