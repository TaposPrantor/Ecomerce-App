
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
        body: ListView(
          children: [
            ProductOrderCard(
              imgUrls: [
                "https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg",
                "https://s.alicdn.com/@sc04/kf/Hcd0128a55fd14eda8d0eec457ebadaefv.jpg_300x300.jpg",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",
                "https://p.globalsources.com/IMAGES/PDT/B1217498440/Amoled-calling-smartwatch.png?ver=6034212300",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",
              ],
            ), //use_custom widget
            ProductOrderCard2(
              orderId: '#AB73H34',
              orderDate: '03 Aug 2026',
              status: 'Shipped',
              statusColor: Colors.green,
              totalItems: 2,
              totalPrice: '৳2,399',
              paymentMethod: 'Nagad',
              imageUrls: [
                "https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg",
                "https://s.alicdn.com/@sc04/kf/Hcd0128a55fd14eda8d0eec457ebadaefv.jpg_300x300.jpg",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",
                "https://p.globalsources.com/IMAGES/PDT/B1217498440/Amoled-calling-smartwatch.png?ver=6034212300",
                "https://s.alicdn.com/@sc04/kf/Hcd0128a55fd14eda8d0eec457ebadaefv.jpg_300x300.jpg",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",

              ],
            ),
            ProductOrderCard2(
              orderId: '#AB73H34',
              orderDate: '03 Aug 2026',
              status: 'Deliverd',
              statusColor: Colors.green,
              totalItems: 2,
              totalPrice: '৳2,399',
              paymentMethod: 'Nagad',
              imageUrls: [
                "https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg",
                "https://s.alicdn.com/@sc04/kf/Hcd0128a55fd14eda8d0eec457ebadaefv.jpg_300x300.jpg",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",
                "https://p.globalsources.com/IMAGES/PDT/B1217498440/Amoled-calling-smartwatch.png?ver=6034212300",
                "https://s.alicdn.com/@sc04/kf/Hcd0128a55fd14eda8d0eec457ebadaefv.jpg_300x300.jpg",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",
                "https://static-01.daraz.com.bd/p/c22832f6c5f082dd5b61d3d822e65568.jpg",

              ],
            ),
          ],
        )
      ),
    );
  }
}





