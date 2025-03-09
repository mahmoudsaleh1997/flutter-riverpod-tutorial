import 'package:flutter/material.dart';

import '../../../cart/presention/cart_screen.dart';

class CardButton extends StatefulWidget {
  const CardButton({super.key});

  @override
  State<CardButton> createState() => _CardButtonState();
}

class _CardButtonState extends State<CardButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartScreen()),
        );
      },
      child: const Icon(Icons.shopping_cart),
    );
  }
}
