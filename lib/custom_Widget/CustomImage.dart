import 'package:flutter/material.dart';


class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key, required this.imgUrl, this.imgH, this.imgW,
  });
  final String imgUrl;
  final double? imgH;
  final double? imgW;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: imgH ?? 75,
        width: imgW ?? 75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(
              image: NetworkImage(imgUrl),
            )
        ),
      ),
    );
  }
}