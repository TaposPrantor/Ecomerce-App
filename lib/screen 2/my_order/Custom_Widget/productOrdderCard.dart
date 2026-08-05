import 'package:flutter/material.dart';
import '../../../custom_Widget/CustomImage.dart';
import '../../../custom_Widget/text.dart';
import 'CustomTextAdd.dart';

class ProductOrderCard extends StatelessWidget {
  const ProductOrderCard({
    super.key, required this.imgUrls, required this.orderId, required this.orderDate, required this.status, required this.statusColor, required this.totalItems, required this.totalPrice, required this.paymentMethod, this.onViewDetails, this.onStatusTap, required this.textColor,
  });


  final String orderId;
  final String orderDate;
  final String status;
  final Color statusColor;
  final Color textColor;
  final String totalItems;
  final String totalPrice;
  final List<String> imgUrls;
  final String paymentMethod;
  final VoidCallback? onViewDetails;
  final VoidCallback? onStatusTap;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child:Container(
          padding: const EdgeInsets.all(12),
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
                      CustomText(text: orderId, fWeight: FontWeight.bold,)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(orderDate),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: onStatusTap,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: statusColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: CustomText(
                            text: status,
                            color: textColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "$totalItems Items"),
                  CustomText(text: "৳$totalPrice", fWeight: FontWeight.bold,fSize: 16,)
                ],
              ),
              Row(
                children: [
                  ...imgUrls.take(4).map(
                      (url) => Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: CustomImage(imgUrl: url),
                      )
                  ),
                  if(imgUrls.length > 4)
                    CustomAddTextCard(
                      text: "+${imgUrls.length - 4}",
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
                      CustomText(text: paymentMethod, fWeight: FontWeight.bold,)
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 75,
                        decoration: BoxDecoration(
                            color: Colors.yellow.shade100,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        alignment: Alignment.center,
                        child: InkWell(
                            onTap: onViewDetails,
                            child: CustomText(text: "View Details", color: Colors.orange,fWeight: FontWeight.w500,)
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
