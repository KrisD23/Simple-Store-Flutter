import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/models/product.dart';

class Shop extends ChangeNotifier {
  // product for sale
  final List<Product> _shop = [
    // product 1
    Product(
        name: 'Macbook Pro',
        description: 'Macbook Pro 2023',
        price: 100,
        imagePath: 'assets/mac.jpg'),

    // product 2
    Product(
        name: 'Watch',
        description: 'Watch',
        price: 200,
        imagePath: 'assets/watch.jpg'),
    // product 3
    Product(
        name: 'Mouse',
        description: 'Mouse',
        price: 300,
        imagePath: 'assets/mouse.jpg'),
    // product 4
    Product(
        name: 'Airpods',
        description: 'Airpods',
        price: 400,
        imagePath: 'assets/airpods.jpg'),
  ];

  // user cart
  List<Product> _cart = [];

  // get product list
  List<Product> get shop => _shop;

  // get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
