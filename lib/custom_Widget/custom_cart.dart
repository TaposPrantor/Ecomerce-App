
import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Badge(
      label: Text("3"),
      textColor: Colors.white,
      backgroundColor: Colors.deepOrange,
      child: Icon(Icons.shopping_cart_outlined),
    );
  }
}