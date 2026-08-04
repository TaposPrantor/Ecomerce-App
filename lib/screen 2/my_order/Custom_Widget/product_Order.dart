import 'package:flutter/material.dart';

import '../../../custom_Widget/CustomImage.dart';
import '../../../custom_Widget/text.dart';
import '../../../utilities/colors.dart';
import 'CustomTextAdd.dart';

class ProductOrderCard2 extends StatelessWidget {
  final String orderId;
  final String orderDate;
  final String status;
  final int totalItems;
  final String totalPrice;
  final String paymentMethod;
  final List<String> imageUrls;
  final VoidCallback? onViewDetails;
  final VoidCallback? onStatusTap;

  const ProductOrderCard2({
    super.key,
    required this.orderId,
    required this.orderDate,
    required this.status,
    required this.totalItems,
    required this.totalPrice,
    required this.paymentMethod,
    required this.imageUrls,
    this.onViewDetails,
    this.onStatusTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(12),
        width: double.infinity,
        child: Column(
          children: [

            /// Order Info
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Order Id"),
                    CustomText(
                      text: orderId,
                      fWeight: FontWeight.bold,
                    ),
                  ],
                ),

                Text(orderDate),

                InkWell(
                  onTap: onStatusTap,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CustomText(
                      text: status,
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            /// Item & Price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "$totalItems Items"),
                CustomText(
                  text: totalPrice,
                  fWeight: FontWeight.bold,
                  fSize: 16,
                ),
              ],
            ),

            const SizedBox(height: 15),

            /// Images
            Row(
              children: [
                ...imageUrls.take(4).map(
                      (e) => Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CustomImage(imgUrl: e),
                  ),
                ),

                if (imageUrls.length > 4)
                  CustomAddTextCard(
                    text: "+${imageUrls.length - 4}",
                  ),
              ],
            ),

            const SizedBox(height: 15),

            /// Payment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Payment Method"),
                    CustomText(
                      text: paymentMethod,
                      fWeight: FontWeight.bold,
                    ),
                  ],
                ),

                InkWell(
                  onTap: onViewDetails,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CustomText(
                      text: "View Details",
                      color: AppColor.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}