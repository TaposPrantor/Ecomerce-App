import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:ecommerce/screen/all_product/widget_ap/filter_section.dart';
import 'package:ecommerce/screen/all_product/widget_ap/productCardWidget.dart';
import 'package:ecommerce/utilities/colors.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FilterSection(),
            SizedBox(height: 10,),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 20,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    childAspectRatio: .95
                  ),
                  itemBuilder: (context, i)=>ProductCardWidget()
              ),
            ),
          ],
        ),
      ),
    );
  }
}