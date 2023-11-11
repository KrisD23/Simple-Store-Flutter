import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/components/my_button.dart';
import 'package:minimal_ecommerce_app_yt/models/product.dart';
import 'package:minimal_ecommerce_app_yt/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove item from cart function
  void removeItemFromCart(BuildContext context, Product product) {
    // show a dialog box
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Remove this item from your cart?'),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),

          // yes button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              // remove from cart
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  // user pressed pay button
  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        content: Text(
            'This is a demo app. You cannot pay for the items. Thank you for your interest.'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Cart Page"),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // cart list
          Expanded(
            child: cart.isEmpty
                ? const Center(
                    child: Text("Your cart is empty"),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      // get individual item in cart
                      final item = cart[index];

                      // return as a cart tile UI
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text(
                          item.price.toString(),
                        ),
                        leading: IconButton(
                          onPressed: () => removeItemFromCart(context, item),
                          icon: const Icon(Icons.remove),
                        ),
                      );
                    },
                  ),
          ),

          // pay button
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(
              onTap: () => payButtonPressed(context),
              child: const Text('Pay'),
            ),
          ),
        ],
      ),
    );
  }
}
