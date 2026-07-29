import 'package:flutter/material.dart';

import '../../../custom_Widget/text.dart';
import '../../../utilities/colors.dart';
class Featured_Card extends StatelessWidget {
  const Featured_Card({
    super.key, this.isShowDiscount,
  });
  final bool? isShowDiscount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 120,
      child: Card(
        //color: Colors.red,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    //color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://img.drz.lazcdn.com/static/bd/p/36b512b5fed7464f329c58f140e1f606.jpg_720x720q80.jpg")
                      )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: "Oraimo Airpod v2.0 Re-supportive",fWeight: FontWeight.bold,),
                      CustomText(text: "৳1190",fWeight: FontWeight.bold,),
                      isShowDiscount == true
                      ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(text: "৳1590",
                            color: Colors.grey,
                            fWeight: FontWeight.bold,
                            tDeco: TextDecoration.lineThrough,
                          ),
                          CustomText(text: "-25%",
                            color: AppColor.primaryColor,
                            fWeight: FontWeight.bold,
                          ),
                        ],
                      )
                      :SizedBox(),
                    ],
                  ),
                )
              ]
          )
      ),
    );
  }
}