import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import '../../custom_Widget/text.dart';
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
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
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

          ],
        ),
      ),
    );
  }
}




