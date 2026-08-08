import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';

import '../../custom_Widget/bottom_Widget.dart';
import '../../screen/home/home_screen.dart';
import '../../utilities/colors.dart';
import '../my_order/my_order.dart';


class OrderPlaced extends StatefulWidget {
  const OrderPlaced({super.key});

  @override
  State<OrderPlaced> createState() => _OrderPlacedState();
}

class _OrderPlacedState extends State<OrderPlaced> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Column(
              spacing: 15,
              children: [
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundColor: Colors.green,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 80,
                      ),
                    ),
                  ],
                ),
                CustomText(text: "Order Placed \n Successfully!", mxLine: 2,fSize: 24,fWeight: FontWeight.bold,),
                CustomText(
                  text: "Thank you for your code. we are received \n      your order & will process it Soon!",
                  fSize: 14,
                  mxLine: 2,

                ),
                Card(
                  elevation: 5,
                  child: Container(
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    child: Column(
                      spacing: 12,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(text: "Order ID"),
                        CustomText(text: "#5AB7HF9G42Q", fWeight: FontWeight.bold,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Order Date"),
                            CustomText(text: "31 July 2026")
                          ],

                        ),
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Total Amount",  fWeight: FontWeight.bold,),
                            CustomText(text: "৳ 3990",  fWeight: FontWeight.bold,),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(text: "Payment Method",  fWeight: FontWeight.bold,),
                            CustomText(text: "bKash",  fWeight: FontWeight.bold,),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(text: "What's Next", fWeight: FontWeight.bold,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 15,),
                    CustomText(text: "We have send an order confirmation \n to your email/gmail", mxLine: 2,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.info_outline),
                    SizedBox(width: 15,),
                    CustomText(text: "You can check your order status  \n from order section", mxLine: 2,)
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.self_improvement_outlined),
                    SizedBox(width: 15,),
                    CustomText(text: "Our team will Contact You If Needed", mxLine: 2,)
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      height: 40,
                      width: double.infinity,
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
                        ],
                      )
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.primaryColor, width: 2),
                        //color: AppColor.primaryColor,
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
                            color: AppColor.primaryColor,
                          ),
                        ],
                      )
                  ),
                ),
              ],
            )
          ],
        ),
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
