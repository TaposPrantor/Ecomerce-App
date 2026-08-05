import 'package:flutter/material.dart';

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    super.key, required this.icon, required this.title, this.iconSize, this.fWidth, required this.onTap, required this.isSelected,
  });

  final String title;
  final double? fWidth;
  final double? iconSize;
  final IconData icon;
  final VoidCallback onTap;
  final bool isSelected;


  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: iconSize ?? 26,
            color: isSelected ? Colors.orange : Colors.grey,
          ),
          Text(
          title,
              style: TextStyle(
                  fontSize: fWidth ?? 12,
                color: isSelected ? Colors.orange : Colors.grey,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal
              )
          )
        ],
      ),
    );
  }
}