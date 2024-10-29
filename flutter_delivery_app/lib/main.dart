import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  List<String> generateRandomProducts(int count) {
    final random = Random();
    return List<String>.generate(count, (index) => 'Product ${random.nextInt(1000)}');
  }

  @override
  Widget build(BuildContext context) {
    final products = generateRandomProducts(20);

    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(products[index]),
        );
      },
    );
  }
}
