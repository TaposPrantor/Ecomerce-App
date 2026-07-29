
import 'package:flutter/material.dart';

import '../../../custom_Widget/text.dart';

class FilterSection extends StatelessWidget {
  const FilterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          spacing: 8,
          children: [
            Icon(Icons.tune, size: 16,),
            CustomText(text: "Filter", fWeight: FontWeight.bold,fSize: 14,)
          ],
        ),
        Row(
          spacing: 8,
          children: [
            CustomText(text: "Sort By", fWeight: FontWeight.bold,fSize: 14,),
            Icon(Icons.arrow_circle_down, size: 16,),
          ],
        ),
        Row(
          spacing: 8,
          children: [
            Icon(Icons.grid_view, size: 16,),
            CustomText(text: "Grid", fWeight: FontWeight.bold,fSize: 14,)
          ],
        ),
      ],
    );
  }
}