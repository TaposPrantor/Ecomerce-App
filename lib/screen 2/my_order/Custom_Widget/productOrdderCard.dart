import 'package:flutter/material.dart';

import '../../../custom_Widget/CustomImage.dart';
import '../../../custom_Widget/text.dart';
import '../../../utilities/colors.dart';
import 'CustomTextAdd.dart';

class ProductOrderCard extends StatelessWidget {
  const ProductOrderCard({
    super.key, required this.imgUrls,
  });

  final List<String> imgUrls;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child:Container(
          height: 250,
          width: double.infinity,
          child: Column(
            spacing: 5,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text("Order Id"),
                      CustomText(text: "#47BG4AY2", fWeight: FontWeight.bold,)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("31 July 2026"),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        alignment: Alignment.center,
                        child: InkWell(
                            onTap: () {},
                            child: CustomText(text: "Processing", color: AppColor.primaryColor,fWeight: FontWeight.w500,)
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "3 Items"),
                  CustomText(text: "৳32,599", fWeight: FontWeight.bold,fSize: 16,)
                ],
              ),
              Row(
                children: [
                  ...imgUrls.take(3).map(
                      (url) => Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: CustomImage(imgUrl: url),
                      )
                  ),
                  if(imgUrls.length > 3)
                    CustomAddTextCard(
                      text: "+${imgUrls.length - 2}",
                    ),
                ],
              ),
              Row
                (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    spacing: 10,
                    children: [
                      Text("Payment Method"),
                      CustomText(text: "bKash", fWeight: FontWeight.bold,)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        alignment: Alignment.center,
                        child: InkWell(
                            onTap: () {},
                            child: CustomText(text: "View Details", color: AppColor.primaryColor,fWeight: FontWeight.w500,)
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
    );
  }
}
