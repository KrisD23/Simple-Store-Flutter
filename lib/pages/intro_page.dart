import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app_yt/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag_outlined,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            const SizedBox(height: 25),
            //title
            Text(
              "PurePalette",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(height: 10),

            //subtitle
            Text(
              "Unveil Elegance in Every Hue",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(height: 25),

            //button
            MyButton(onTap: () {}, child: Icon(Icons.arrow_forward)),
          ],
        ),
      ),
    );
  }
}
