import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import '../../custom_Widget/custom_button.dart';
import '../../custom_Widget/text.dart';
import '../../utilities/colors.dart';
import 'Custom_Widget/order_items.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "Order Details", fSize: 21, fWeight: FontWeight.bold,),
        actions: [
          Icon(Icons.headphones_rounded, size: 30,),
          SizedBox(width: 18,),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Card(
              elevation: 4,
              child: Container(
                height: 225,
                width: double.infinity,
                padding: EdgeInsets.all(6),
                child: Column(
                  spacing: 10,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: "Order Id"),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green.shade50,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CustomText(
                              text: "Delivered",
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: "#SF42HB82PR",
                          fWeight: FontWeight.bold,fSize: 16,
                        )
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Order Date"),
                        SizedBox(width: 45,),
                        CustomText(text: "30 June, 2026"),
                        SizedBox(width: 10,),
                        CustomText(text: "10:45 am")
                      ],
                    ),
                    EasyStepper(
                      activeStep: activeStep,
                      stepRadius: 28,
                      showLoadingAnimation: false,
                      stepBorderRadius: 15,
                      finishedStepBackgroundColor: const Color(0xFF7C3AED),
                      activeStepBackgroundColor: const Color(0xFF7C3AED),
                      finishedStepTextColor: const Color(0xFF7C3AED),
                      lineStyle: const LineStyle(
                        lineLength: 60,
                        lineType: LineType.normal,
                        lineThickness: 3,
                        unreachedLineType: LineType.dashed,
                        defaultLineColor: Color(0xFFDCD7E8),
                        finishedLineColor: Color(0xFF7C3AED),
                      ),
                      steps: const [
                        EasyStep(icon: Icon(Icons.shopping_cart), title: 'Cart',),
                        EasyStep(icon: Icon(Icons.person), title: 'Address'),
                        EasyStep(icon: Icon(Icons.receipt_long), title: 'Checkout'),
                        EasyStep(icon: Icon(Icons.star), title: 'Review'),
                        EasyStep(icon: Icon(Icons.check_circle), title: 'Done'),
                      ],
                      onStepReached: (index) => setState(() => activeStep = index),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: CustomText(text: "Order Items", fSize: 18,fWeight: FontWeight.bold,),
            ),
            OrderItem(
              imgUrl: "https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg",
              title: 'Apex Kades For Women 2026Pro',
              pColor: 'Pink', pPrice: '1790',),
            Divider(),
            OrderItem(
              imgUrl: "https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg",
              title: 'Apex Kades For Women 2026Pro',
              pColor: 'Pink', pPrice: '1790',),
            Divider(),
            OrderItem(
              imgUrl: "https://m.media-amazon.com/images/I/71rqFhXj4PL._AC_UY1000_.jpg",
              title: 'Apex Kades For Women 2026Pro',
              pColor: 'Pink', pPrice: '1790',),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: CustomText(text: "Price Details", fSize: 18,fWeight: FontWeight.bold,),
            ),
            Card(
              child: Container(
                height: 150,
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  spacing: 10,
                  children: [
                    Row(
                      children: [
                        CustomText(text: "SubTotal(3 Items)"),
                        Spacer(),
                        CustomText(text: "৳ 3299")
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Shipping Charge"),
                        Spacer(),
                        CustomText(text: "৳ 80")
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Discount"),
                        Spacer(),
                        CustomText(text: "৳ -320", color: Colors.green,)
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        CustomText(text: "Total Amount", fWeight: FontWeight.bold,fSize: 14,),
                        Spacer(),
                        CustomText(text: "৳ 3059", fWeight: FontWeight.bold,fSize: 13,)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 35,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.5,
                  color: Colors.grey.shade200
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  CustomText(text: "Payment Method"),
                  Spacer(),
                  Row(
                    spacing: 8,
                    children: [
                      CustomText(text: "bKash", color: Colors.grey,),
                      Container(
                        height: 25,
                        width: 40,
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://img.utdstc.com/icon/2b6/3dd/2b63dd29935b2953d5ac7a47269bfea37c5e6556352158b87c1f8e20fc09da31:600",
                              )
                          ),

                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    spacing: 10,
                    children: [
                      CustomText(text: "Delivery Address", fWeight: FontWeight.bold,fSize: 17,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 15,
                        children: [
                          Column(
                            children: [
                              Icon(Icons.location_on, size: 24,),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: "MS Dhoni"),
                              CustomText(text: "House 14, Road 21, Sector 14"),
                              CustomText(text: "Uttara, Dhaka 1230"),
                              CustomText(text: "+123 7542742874"),
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,

                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    //color: Colors.orange.shade100,
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.orangeAccent
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: CustomText(
                                    text: "View On Map",
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                spacing: 20,
                children: [
                  Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppColor.primaryColor,
                                  width: 3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.refresh , color: Colors.orange,size: 25,),
                                SizedBox(width: 15,),
                                CustomText(
                                  text: "Re-Order",
                                  fWeight: FontWeight.bold,
                                  fSize: 14,
                                  color: Colors.orange,
                                ),
                              ],
                            )
                        ),
                      ),
                  ),
                  Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                            height: 40,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              border: Border.all(
                                  color: Colors.deepOrange,
                                  width: 3),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.download, color: Colors.white,size: 25,),
                                SizedBox(width: 15,),
                                CustomText(
                                  text: "DownLoad Invoice",
                                  fWeight: FontWeight.bold,
                                  fSize: 14,
                                  color: Colors.white,
                                ),
                              ],
                            )
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




