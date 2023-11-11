import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/models/product.dart';

class Shop extends ChangeNotifier {
  // product for sale
  final List<Product> _shop = [
    // product 1
    Product(
        name: 'Apple MacBook Air',
        description:
            '13.3-inch/33.74 cm Retina Display, 8GB RAM, 256GB SSD Storage, Backlit Keyboard, FaceTime HD Camera, Touch ID. Works with iPhone/iPad; Gold',
        price: 900,
        imagePath: 'assets/mac.jpg'),

    // product 2
    Product(
        name: 'Apple Watch SE',
        description:
            'Apple Watch SE (2nd Gen) [GPS 44 mm] Smart Watch w/Silver Aluminium Case & White Sport Band. Fitness & Sleep Tracker, Crash Detection, Heart Rate Monitor, Retina Display, Water Resistant',
        price: 400,
        imagePath: 'assets/watch.jpg'),
    // product 3
    Product(
        name: ' Apple Magic Mouse',
        description:
            'Magic Mouse is wireless and rechargeable, with an optimised foot design that lets it glide smoothly across your desk. The Multi-Touch surface allows you to perform simple gestures ',
        price: 150,
        imagePath: 'assets/mouse.jpg'),
    // product 4
    Product(
        name: 'Apple Airpods Pro',
        description:
            'Deliver up to 2x more Active Noise Cancellation than the previous generation, with Transparency mode that enables you to hear the world around you. All-new Adaptive Audio',
        price: 200,
        imagePath: 'assets/airpods.jpg'),
  ];

  // user cart
  final List<Product> _cart = [];

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
