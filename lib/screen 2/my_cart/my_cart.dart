import 'dart:math';

import 'package:ecommerce/custom_Widget/custom_button.dart';
import 'package:flutter/material.dart';

import '../../custom_Widget/bottom_Widget.dart';
import '../../custom_Widget/custom_cart.dart';
import '../../custom_Widget/text.dart';
import '../../screen/home/home_screen.dart';
import '../../utilities/colors.dart';
import '../my_order/my_order.dart';
import 'Custom_Widget/MyCartContainer.dart';
import 'Custom_Widget/MyCartShpping.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {

  int selectedIndex = 0;

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
          Container(
            height: 50,
            //padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(5)
            ),
            child: Card(
              child: Row(
                spacing: 10,
                children: [
                  SizedBox(width: 12,),
                  Icon(Icons.book),
                  Text("Have a Coupon Code?"),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        //color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: CustomText(
                        text: "Apply",
                        color: Colors.deepOrange,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 180,
            padding: EdgeInsets.all(5),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        CustomText(text: "SubTotal(3 Item)", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 3690"),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Delivery Charge", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 90"),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Discount", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 390"),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        CustomText(text: "Total", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 3390"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 180,
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.primaryColor, width: 3),
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(12),
              ),
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Continue to Proceed",
                    fWeight: FontWeight.bold,
                    fSize: 14,
                    color: Colors.white,
                  ),
                  SizedBox(width: 45,),
                  Icon(Icons.arrow_right_alt_rounded , color: Colors.white,size: 35,)
                ],
              )
            ),
          ),
          SizedBox(height: 20,)
        ],
      ),

      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.075,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomWidget(
              icon: (Icons.home),
              title: 'Home',
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>HomeScreen())
                  );
                });
              },
            ),
            BottomWidget(
              icon: (Icons.grid_view),
              title: 'Category',
              isSelected: selectedIndex == 1,
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>MyOrder())
                  );
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


