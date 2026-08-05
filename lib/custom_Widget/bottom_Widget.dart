import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key, required this.icon, required this.title, this.iconSize, this.fWidth,
  });

  final String title;
  final double? fWidth;
  final double? iconSize;
  final IconData icon;


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize ?? 26,
        ),
        Text(
        title,
            style: TextStyle(
                fontSize: fWidth ?? 12,
            )
        )
      ],
    );
  }
}