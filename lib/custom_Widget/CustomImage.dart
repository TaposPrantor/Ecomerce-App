import 'package:flutter/material.dart';


class CustomImage extends StatelessWidget {
  const CustomImage({
    super.key, required this.imgUrl, this.imgH, this.imgW,
  });
  final String imgUrl;
  final int? imgH;
  final int? imgW;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 75,
        width: 75,
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