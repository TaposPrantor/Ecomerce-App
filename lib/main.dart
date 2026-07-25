
import 'package:ecommerce/screen/default/fpass_screen.dart';
import 'package:ecommerce/screen/default/otp_screen.dart';
import 'package:ecommerce/screen/products/home_screen.dart';
import 'package:ecommerce/screen/default/reg_screen.dart';
import 'package:ecommerce/screen/default/reset_password.dart';
import 'package:ecommerce/screen/default/splash.dart';
import 'package:flutter/material.dart';
import 'screen/default/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
