import 'package:flutter/material.dart';

import '../data/product_model.dart';
import 'widgets/card_button.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    final products = ProductListModel.fromJson(productsData).products;
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemCount: products!.length,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            tileColor: Colors.white,
            title: Text(product.name!),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.description!),
                SizedBox(height: 4),
                Text('\$${product.price}'),
              ],
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
                child: Image.asset('assets/products/${product.image}')),

          );
        },
      ),
      floatingActionButton: CardButton(),
    );
  }
}
