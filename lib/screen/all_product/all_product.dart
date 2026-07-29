import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "All Products", fWeight: FontWeight.bold,fSize: 18,),
        actions: [
          Icon(Icons.search,),
          SizedBox(width: 12,),
          CustomCart(),
          SizedBox(width: 12,)
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.tune, size: 16,),
                  CustomText(text: "Filter", fWeight: FontWeight.bold,fSize: 14,)
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  CustomText(text: "Sort By", fWeight: FontWeight.bold,fSize: 14,),
                  Icon(Icons.arrow_circle_down, size: 16,),
                ],
              ),
              Row(
                spacing: 8,
                children: [
                  Icon(Icons.grid_view, size: 16,),
                  CustomText(text: "Grid", fWeight: FontWeight.bold,fSize: 14,)
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
