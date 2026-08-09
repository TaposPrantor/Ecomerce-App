import 'package:flutter/material.dart';

import '../../../custom_Widget/text.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key, required this.imgUrl, required this.title, required this.pColor, required this.pPrice,
  });

  final String imgUrl;
  final String title;
  final String pColor;
  final String pPrice;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        spacing: 15,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(imgUrl)
                )
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 15,
              children: [
                CustomText(text: title, fWeight: FontWeight.bold,),
                CustomText(text: pColor, color: Colors.grey,),
                Row(
                  children: [
                    CustomText(text: "৳ $pPrice", fWeight: FontWeight.bold,),
                    Spacer(),
                    CustomText(text: "Qty 1",),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}