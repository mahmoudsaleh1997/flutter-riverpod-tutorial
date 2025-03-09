import 'package:flutter/material.dart';
import 'package:flutter_riverpod_tutorial/features/products/presentation/product_list_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: ProductListScreen(),
    );
  }
}
