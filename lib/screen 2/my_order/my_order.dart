
import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';


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
              child:Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  height: 250,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Id"),
                              Text("#12DF7H42")
                            ],
                          ),
                          Column(
                            children: [
                              Text("31 July 2026"),
                            ],
                          ),
                          Column(
                            children: [
                              Text("Processing"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ),
          ],
        )
      ),
    );
  }
}
