import 'package:flutter/material.dart';

import '../../custom_Widget/bottom_Widget.dart';
import '../../custom_Widget/text.dart';
import '../../screen/home/home_screen.dart';
import '../../utilities/colors.dart';
import '../my_order/my_order.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  String selected = "bkash";
  int selectedIndex = 0;
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
                    CustomText(text: "Payment Method", fWeight: FontWeight.bold,fSize: 17,),
                    Row(
                      children: [
                        Radio(
                          value: "bkash",
                          groupValue: selected,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              selected = value.toString();
                            });
                          },
                        ),
                        Expanded(child: Text("bKash")),
                        Spacer(),
                        Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                                image: NetworkImage(
                                    "https://play-lh.googleusercontent.com/9nDLv3ZU3QYDkszwsqq0CvJoRhtvA_hpZNQFLwRw8_vbPkvbJGoaa_TZ7edjEwG0BLxEwtcLYGsHmnRLNJGUzw=w240-h480-rw",

                                )
                            ),

                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: "Nagad",
                          groupValue: selected,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              selected = value.toString();
                            });
                          },
                        ),
                        Expanded(child: Text("Nagad")),
                        Spacer(),
                        Container(
                          height: 35,
                          width: 35,
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
                    Row(
                      children: [
                        Radio(
                          value: "cod",
                          groupValue: selected,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              selected = value.toString();
                            });
                          },
                        ),
                        Expanded(child: Text("Cash On Delivery")),

                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: "V/M Card",
                          groupValue: selected,
                          activeColor: Colors.orange,
                          onChanged: (value) {
                            setState(() {
                              selected = value.toString();
                            });
                          },
                        ),
                        Expanded(child: Text("Visa/Master Card")),
                        Spacer(),
                        Container(
                          height: 35,
                          width: 55,
                          padding: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  "https://i.ytimg.com/vi/i09C02151PI/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLA_nBZ0txJPiUlXvt3BgVeB1HhrgQ",
                                )
                            ),

                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Card(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    CustomText(text: "Order Summery", fWeight: FontWeight.bold, fSize: 18,),
                    Row(
                      children: [
                        CustomText(text: "SubTotal(3 Item)", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 3690"),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Delivery Charge", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 90"),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(text: "Discount", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 390"),
                      ],
                    ),
                    Divider(),
                    Row(
                      children: [
                        CustomText(text: "Total Amount", fWeight: FontWeight.bold,),
                        Spacer(),
                        CustomText(text: "৳ 3390"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {},
              child: Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.primaryColor, width: 3),
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: "Continue to Proceed",
                        fWeight: FontWeight.bold,
                        fSize: 14,
                        color: Colors.white,
                      ),
                    ],
                  )
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.lock,),
              CustomText(text: "Your payment information is Secure")
            ],
          ),
          SizedBox(height: 35,),
        ],
      ),

      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.075,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomWidget(
              icon: (Icons.home),
              title: 'Home',
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>HomeScreen())
                  );
                });
              },
            ),
            BottomWidget(
              icon: (Icons.grid_view),
              title: 'Category',
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.search),
              title: 'Search',
              isSelected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.article),
              title: 'Order',
              isSelected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>MyOrder())
                  );
                });
              },
            ),
            BottomWidget(
              icon: (Icons.person),
              title: 'Account',
              isSelected: selectedIndex == 4,
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
            ),
          ],
        ),
      ),

    );
  }
}
