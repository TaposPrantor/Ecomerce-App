import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:ecommerce/screen/all_product/widget_ap/filter_section.dart';
import 'package:ecommerce/screen/all_product/widget_ap/productCardWidget.dart';
import 'package:ecommerce/utilities/colors.dart';
import 'package:flutter/material.dart';

import '../../custom_Widget/bottom_Widget.dart';
import '../../database/product.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({super.key});

  @override
  State<AllProduct> createState() => _AllProductState();
}

class _AllProductState extends State<AllProduct> {
  int selectedIndex = 0;
  List productData = [];

  getProduct(){
    productData.clear();
    productData.addAll(ProductData.pd);
  }

  @override
  void initState(){
    getProduct();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "All Products (${productData.length})", fWeight: FontWeight.bold,fSize: 18,),
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
                itemCount: productData.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    childAspectRatio: .95
                  ),
                  itemBuilder: (context, i)=>ProductCardWidget(
                    pData: productData[i],
                  )
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.08,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomWidget(
              icon: (Icons.home),
              title: 'Home',
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.grid_view),
              title: 'Category',
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.search),
              title: 'Search',
              isSelected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.article),
              title: 'Order',
              isSelected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.person),
              title: 'Account',
              isSelected: selectedIndex == 4,
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}

