import 'package:flutter/material.dart';

import '../../custom_Widget/custom_cart.dart';
import '../../custom_Widget/text.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange.shade50,
            title: CustomText(text: "My Orders", fSize: 21, fWeight: FontWeight.bold,),
            actions: [
              Icon(Icons.settings, size: 30,),
              SizedBox(width: 10,)
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 5,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  padding: EdgeInsets.all(7),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    spacing: 15,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage("https://pbs.twimg.com/media/HFiAjgpaoAAyFNy.jpg"),
                          ),
                        ],
                      ),
                      Expanded(
                        flex: 4,
                          child:Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              spacing: 10,
                              children: [
                                CustomText(text: "MS Dhoni", fSize: 15, fWeight: FontWeight.bold,),
                                CustomText(text: "+92 01186324564",fSize: 12, fWeight: FontWeight.bold,),
                                CustomText(text: "msdhoni01icc@gmail.com", fSize: 10, fWeight: FontWeight.bold,),

                              ],
                          ),
                      ),
                      Expanded(
                        flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_forward_ios, size: 35,)
                            ],
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  height: 120,
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CustomText(text: "My Order", fWeight: FontWeight.bold, fSize: 18,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 12,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.orange.shade100,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: CustomText(
                                    text: "View All",
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Icon(Icons.description_outlined),
                              ),
                              CustomText(text: "Processing")
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Icon(Icons.local_shipping_outlined),
                              ),
                              CustomText(text: "Shipped")
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Icon(Icons.check_box),
                              ),
                              CustomText(text: "Delivered")
                            ],
                          ),
                          Column(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                child: Icon(Icons.cancel),
                              ),
                              CustomText(text: "Cancelled")
                            ],
                          ),

                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        )
    );
  }
}
