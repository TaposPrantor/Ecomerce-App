import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:ecommerce/screen/details/widget/imageSlider.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CustomCart(), SizedBox(width: 10)]),
      body: Column(
        children: [
          ProductImageSlider(),
        ],
      ),
    );
  }
}


