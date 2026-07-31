import 'package:flutter/material.dart';

import '../../../custom_Widget/text.dart';
import '../../../utilities/colors.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentGeometry.topRight,
            children: [
              Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://newworld.co.za/cdn/shop/files/a5.webp?v=1750595591",
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                right: 5,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined),
                ),
              ),
            ],
          ),
          Column(
            children: [
              CustomText(text: "Apple Airpod v2.0 Update with 1 Year Warranty"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "৳1199",
                    fWeight: FontWeight.bold,
                    fSize: 14,
                  ),
                  CustomText(
                    text: "৳1599",
                    fWeight: FontWeight.bold,
                    tDeco: TextDecoration.lineThrough,
                  ),
                  CustomText(
                    text: "25%",
                    fWeight: FontWeight.bold,
                    fSize: 14,
                    color: AppColor.primaryColor,
                  ),
                ],
              ),
            ],
          ),
          Row(
            spacing: 19,
            children: [
              Icon(Icons.star, color: Colors.deepOrange, size: 18),
              CustomText(text: "4.6", color: AppColor.primaryColor, fSize: 16),
              CustomText(text: "(256)", color: Colors.black38, fSize: 16),
            ],
          ),
        ],
      ),
    );
  }
}
