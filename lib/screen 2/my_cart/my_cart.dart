import 'dart:math';

import 'package:flutter/material.dart';

import '../../custom_Widget/custom_cart.dart';
import '../../custom_Widget/text.dart';
import 'Custom_Widget/MyCartContainer.dart';
import 'Custom_Widget/MyCartShpping.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade50,
        title: CustomText(
          text: "My Orders",
          fSize: 21,
          fWeight: FontWeight.bold,
        ),
        actions: [
          Icon(Icons.favorite_border, color: Colors.black, size: 30),
          SizedBox(width: 18),
          CustomCart(),
          SizedBox(width: 10),
        ],
      ),
      body: ListView(
        children: [
          MyCartShipping(),
          MyCartContainer(
            imgUrl: 'https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg',
            title: 'Jump-Iva Kade for Rainy Season',
            price: '3299',
          ),
          MyCartContainer(
            imgUrl: 'https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg',
            title: 'Jump-Iva Kade for Rainy Season',
            price: '3299',
          ),
          MyCartContainer(
            imgUrl: 'https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg',
            title: 'Jump-Iva Kade for Rainy Season',
            price: '3299',
          ),
        ],
      ),
    );
  }
}


