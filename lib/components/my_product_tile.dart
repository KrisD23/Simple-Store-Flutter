import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/models/product.dart';

class MyProductTile extends StatelessWidget {
  final Product product;
  const MyProductTile({required this.product, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      width: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // product image
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              padding: EdgeInsets.all(25),
              child: Icon(Icons.face_retouching_natural),
            ),
          ),
          const SizedBox(height: 25),
          // product name
          Text(
            product.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const SizedBox(height: 10),

          // product description
          Text(
            product.description,
            style:
                TextStyle(color: Theme.of(context).colorScheme.inversePrimary),
          ),
          const SizedBox(height: 25),

          // product price + add to cart button
          Text(product.price.toString()),
        ],
      ),
    );
  }
}