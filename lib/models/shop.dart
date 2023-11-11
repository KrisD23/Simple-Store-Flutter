import 'package:minimal_ecommerce_app_yt/models/product.dart';

class Shop {
  // product for sale
  final List<Product> _shop = [
    // product 1
    Product(
      name: 'Product 1',
      description: 'This is product 1',
      price: 100,
      //imagePath: 'assets/images/product1.png'
    ),

    // product 2
    Product(
      name: 'Product 2',
      description: 'This is product 2',
      price: 200,
      //imagePath: 'assets/images/product2.png'
    ),
    // product 3
    Product(
      name: 'Product 3',
      description: 'This is product 3',
      price: 300,
      //imagePath: 'assets/images/product3.png'
    ),
    // product 4
    Product(
      name: 'Product 4',
      description: 'This is product 4',
      price: 400,
      //imagePath: 'assets/images/product4.png'
    ),
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
  }

  // remove item from cart
  void removeFromCart(Product item) {
    _cart.remove(item);
  }
}
