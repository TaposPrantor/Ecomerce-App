import 'package:flutter/material.dart';

import '../../custom_Widget/custom_cart.dart';
import '../../custom_Widget/text.dart';

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
        title: CustomText(text: "My Orders", fSize: 21, fWeight: FontWeight.bold,),
        actions: [
          Icon(Icons.favorite_border, color: Colors.black, size: 30,),
          SizedBox(width: 18,),
          CustomCart(),
          SizedBox(width: 10,)
        ],
      ),
    );
  }
}
