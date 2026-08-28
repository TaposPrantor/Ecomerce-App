import 'package:flutter/material.dart';

import '../../../custom_Widget/text.dart';
import '../../../database/product.dart';
import '../../../utilities/colors.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key, required this.id, required this.name, required this.regP, required this.disP, required this.rating, required this.reviews, required this.discount});

  final int id;
  final String name;
  final double regP;
  final double disP;
  final double rating;
  final int reviews;
  final int discount;

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
              CustomText(text: name),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "৳ $disP",
                    fWeight: FontWeight.bold,
                    fSize: 14,
                  ),
                  CustomText(
                    text: "৳ $regP",
                    fWeight: FontWeight.bold,
                    tDeco: TextDecoration.lineThrough,
                  ),
                  CustomText(
                    text: "$discount%",
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
              CustomText(text: "$rating", color: AppColor.primaryColor, fSize: 16),
              CustomText(text: "$reviews", color: Colors.black38, fSize: 16),
            ],
          ),
        ],
      ),
    );
  }
}
