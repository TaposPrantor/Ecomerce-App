
import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';
import '../../custom_Widget/CustomImage.dart';
import '../../utilities/colors.dart';
import 'Custom_Widget/CustomTextAdd.dart';
import 'Custom_Widget/productOrdderCard.dart';
import 'Custom_Widget/product_Order.dart';


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
            ProductOrderCard(),
            ProductOrderCard2(orderId: '#AB73H34',
              orderDate: '03 Aug 2026',
              status: 'Shipped',
              totalItems: 2,
              totalPrice: '৳2,399',
              paymentMethod: 'Nagad',
              imageUrls: [
                "https://motionview.com.bd/_next/image?url=https%3A%2F%2Fmotionview.s3.amazonaws.com%2Fimages%2Fproducts%2Fprofile%2F177687341187.webp&w=3840&q=75",
                "https://motionview.com.bd/_next/image?url=https%3A%2F%2Fmotionview.s3.amazonaws.com%2Fimages%2Fproducts%2Fprofile%2F177687341187.webp&w=3840&q=75",
                "https://motionview.com.bd/_next/image?url=https%3A%2F%2Fmotionview.s3.amazonaws.com%2Fimages%2Fproducts%2Fprofile%2F177687341187.webp&w=3840&q=75",
                "https://motionview.com.bd/_next/image?url=https%3A%2F%2Fmotionview.s3.amazonaws.com%2Fimages%2Fproducts%2Fprofile%2F177687341187.webp&w=3840&q=75",
              ],
            ),
          ],
        )
      ),
    );
  }
}





