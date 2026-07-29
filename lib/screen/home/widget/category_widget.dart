import 'package:flutter/material.dart';
import '../../../custom_Widget/text.dart';

class Category_Widget extends StatelessWidget {
  const Category_Widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        spacing: 5,
        children: [
          CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 40,
            backgroundImage: NetworkImage("https://newworld.co.za/cdn/shop/files/a5.webp?v=1750595591"),
          ),
          CustomText(text: "Electronics",fSize: 15, fWeight: FontWeight.bold,)
        ],
      ),
    );
  }
}