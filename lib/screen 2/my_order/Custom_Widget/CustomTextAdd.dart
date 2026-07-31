import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';


class CustomAddTextCard extends StatelessWidget {
  const CustomAddTextCard({
    super.key, required this.text, this.height, this.width,
  });

  final String text;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: height ?? 55,
        width: width ?? 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: Text(text),
      ),
    );
  }
}