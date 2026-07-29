import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:ecommerce/screen/all_product/widget_ap/filter_section.dart';
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
          FilterSection()
        ],
      ),
    );
  }
}


