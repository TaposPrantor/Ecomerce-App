
import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';

import '../../custom_Widget/CustomImage.dart';
import '../../utilities/colors.dart';


class MyOrder extends StatefulWidget {
  const MyOrder({super.key});

  @override
  State<MyOrder> createState() => _MyOrderState();
}

class _MyOrderState extends State<MyOrder> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: CustomText(text: "My Orders", fSize: 21, fWeight: FontWeight.bold,),
          actions: [
            Icon(Icons.search, size: 30,),
            SizedBox(width: 18,),
            CustomCart(),
            SizedBox(width: 10,)
          ],
        ),
        body: Column(
          children: [
            Card(
              elevation: 5,
              child:Container(
                height: 250,
                width: double.infinity,
                child: Column(
                  spacing: 5,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 10,
                          children: [
                            Text("Order Id"),
                            CustomText(text: "#47BG4AY2", fWeight: FontWeight.bold,)
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("31 July 2026"),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              width: 75,
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.circular(12)
                              ),
                              alignment: Alignment.center,
                              child: InkWell(
                                  onTap: () {},
                                  child: CustomText(text: "Processing", color: AppColor.primaryColor,fWeight: FontWeight.w500,)
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "3 Items"),
                        CustomText(text: "৳32,599", fWeight: FontWeight.bold,fSize: 16,)
                      ],
                    ),
                    Row(
                      children: [
                        CustomImage(imgUrl: "https://motionview.com.bd/_next/image?url=https%3A%2F%2Fmotionview.s3.amazonaws.com%2Fimages%2Fproducts%2Fprofile%2F177687341187.webp&w=3840&q=75"),
                        CustomImage(imgUrl: "https://motionview.com.bd/_next/image?url=https%3A%2F%2Fmotionview.s3.amazonaws.com%2Fimages%2Fproducts%2Fprofile%2F177687341187.webp&w=3840&q=75"),
                        CustomImage(imgUrl: "https://motionview.com.bd/_next/image?url=https%3A%2F%2Fmotionview.s3.amazonaws.com%2Fimages%2Fproducts%2Fprofile%2F177687341187.webp&w=3840&q=75"),
                      ],
                    )
                  ],
                ),
              )
            ),
          ],
        )
      ),
    );
  }
}


