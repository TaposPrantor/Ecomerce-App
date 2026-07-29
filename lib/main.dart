
import 'package:ecommerce/screen/all_product/all_product.dart';
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
      home: AllProduct(),
    );
  }
}
