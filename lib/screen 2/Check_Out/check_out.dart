import 'package:flutter/material.dart';

import '../../custom_Widget/text.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade50,
        title: CustomText(
          text: "CheckOut",
          fSize: 21,
          fWeight: FontWeight.bold,
        ),
      ),
      body: ListView(
        children: [
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
                      ],
                    ),
                    Row(
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
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: CustomText(
                              text: "Change",
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
