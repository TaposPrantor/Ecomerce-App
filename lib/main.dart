
import 'package:ecommerce/screen/fpass_screen.dart';
import 'package:ecommerce/screen/otp_screen.dart';
import 'package:ecommerce/screen/reg_screen.dart';
import 'package:ecommerce/screen/splash.dart';
import 'package:flutter/material.dart';
import 'screen/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpScreen(),
    );
  }
}
