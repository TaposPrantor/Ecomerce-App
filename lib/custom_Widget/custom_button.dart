import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({
    super.key, this.isEmptyBG, required this.title, required this.onTap, this.ht, this.wt,
  });

  final bool? isEmptyBG;
  final String title;
  final VoidCallback onTap;
  final double? ht;
  final double? wt;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 180,
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.primaryColor, width: 3),
          color: isEmptyBG == true ? null : AppColor.primaryColor,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: CustomText(
          text: title,
          fWeight: FontWeight.bold,
          fSize: 14,
          color: isEmptyBG == true ? AppColor.primaryColor : Colors.white,
        ),
      ),
    );
  }
}