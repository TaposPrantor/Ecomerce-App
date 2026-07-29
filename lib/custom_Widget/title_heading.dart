import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';

import '../utilities/colors.dart';

class TitleHeading extends StatelessWidget {
  const TitleHeading({
    super.key, required this.text, required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 15,
      children: [
        CustomText(text: text, color: AppColor.secondaryColor, fWeight: FontWeight.bold, fSize: 15,),
        InkWell(
            onTap: onTap,
            child: CustomText(text: "View All", color: AppColor.primaryColor,fWeight: FontWeight.w500,)
        )
      ],
    );
  }
}