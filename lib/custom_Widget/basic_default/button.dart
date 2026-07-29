import 'package:ecommerce/custom_Widget/basic_default/text_widget.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({super.key, required this.bName, this.bColor, required this.onTap, this.bWidth});

  String bName;
  Color? bColor;
  VoidCallback onTap;
  double? bWidth;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: bColor??Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: bWidth??100, vertical: 10),
              child: MyTextWidget(title: bName, tColor: Colors.white,tSize: 15,),
            )
          ],
        ),
      ),
    );
  }
}
