import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          // product image
          Icon(Icons.face_retouching_natural),

          // product name
          Text(product.name),

          // product description
          Text(product.description),

          // product price + add to cart button
          Text(product.price.toString()),
        ],
      ),
    );
  }
}
