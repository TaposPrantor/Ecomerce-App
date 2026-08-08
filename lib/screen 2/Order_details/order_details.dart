import 'package:flutter/material.dart';

import '../../custom_Widget/custom_cart.dart';
import '../../custom_Widget/text.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Order Details", fSize: 21, fWeight: FontWeight.bold,),
        actions: [
          Icon(Icons.headphones_rounded, size: 30,),
          SizedBox(width: 18,),
        ],
      ),

      body: Column(
        children: [
          Card(
            elevation: 4,
            child: Container(
              height: 180,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Order Id"),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CustomText(
                              text: "Delivered",
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "#SF42HB82PR",
                          fWeight: FontWeight.bold,fSize: 16,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Order Date"),
                        SizedBox(width: 45,),
                        CustomText(text: "30 June, 2026"),
                        SizedBox(width: 10,),
                        CustomText(text: "10:45 am")
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),


    );
  }
}
