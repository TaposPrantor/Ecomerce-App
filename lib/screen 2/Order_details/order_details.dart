import 'package:flutter/material.dart';

import '../../custom_Widget/custom_cart.dart';
import '../../custom_Widget/text.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Order Details", fSize: 21, fWeight: FontWeight.bold,),
        actions: [
          Icon(Icons.headphones_rounded, size: 30,),
          SizedBox(width: 18,),
        ],
      ),
    );
  }
}
