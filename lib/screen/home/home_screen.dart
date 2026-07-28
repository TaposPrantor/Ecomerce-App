
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            CustomText(text: "Dinajpur", fSize: 24, fWeight: FontWeight.bold,),
            CustomText(text: "Hat", fSize: 24, fWeight: FontWeight.bold, color: Colors.deepOrangeAccent,)
          ],
        ),
        actions: [
          Badge( 
            label: Text("3"),
            textColor: Colors.white,
            backgroundColor: Colors.deepOrange,
            child: Icon(Icons.shopping_cart_outlined),
          ),
          SizedBox(width: 30,)
        ],
      ),
    );
  }
}
