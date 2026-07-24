import 'package:flutter/material.dart';
import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    timerFun();
    super.initState();
  }

  Future<void> timerFun() async {
    await Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.network(
          "https://d1csarkz8obe9u.cloudfront.net/posterpreviews/vegetables-instagram-story-promotion-banner-design-template-a112c81268b7928a10e887a4280d8674_screen.jpg?ts=1660092781",
        ),
      ),
    );
  }
}
