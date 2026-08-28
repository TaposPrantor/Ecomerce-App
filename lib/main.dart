import 'package:ecommerce/screen%202/Check_Out/check_out.dart';
import 'package:ecommerce/screen%202/Edit_Profile/edit_profile.dart';
import 'package:ecommerce/screen%202/My_Account/my_account.dart';
import 'package:ecommerce/screen%202/Order_details/order_details.dart';
import 'package:ecommerce/screen%202/Order_placed/order_placed.dart';
import 'package:ecommerce/screen%202/my_cart/my_cart.dart';
import 'package:ecommerce/screen%202/my_order/my_order.dart';
import 'package:ecommerce/screen/all_product/all_product.dart';
import 'package:ecommerce/screen/default/splash.dart';
import 'package:ecommerce/screen/details/product_details.dart';
import 'package:ecommerce/screen/home/home_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetails(),
    );
  }
}
