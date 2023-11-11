import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Drawer Header : Logo
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.computer,
                    size: 100,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              // shop tile
              MyListTile(
                text: 'Shop',
                icon: Icons.home_outlined,
                onTap: () => Navigator.pop(context),
              ),
              // cart tile
              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart_outlined,
                onTap: () {
                  // pop the drawer first
                  Navigator.pop(context);

                  // navigate to cart page
                  Navigator.pushNamed(context, '/cart_page');
                },
              ),
            ],
          ),

          //exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              text: 'Exit',
              icon: Icons.exit_to_app_outlined,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/intro_page', (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
