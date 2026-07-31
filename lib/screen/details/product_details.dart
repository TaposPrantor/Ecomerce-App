import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
import 'package:ecommerce/screen/details/widget/imageSlider.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [CustomCart(), SizedBox(width: 10)]),
      body: Column(
        children: [
          ProductImageSlider(),
          Column(
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Cannon DSLR Camera Hex45 v2.0"),
                  Icon(Icons.share, color: Colors.black54,)
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  Icon(Icons.star, color: Colors.orange,size: 16,),
                  CustomText(text: "4.5", color: Colors.orange,fSize: 15,),
                  CustomText(text: "(329 Reviews)")
                ],
              ),
              Row(
                spacing: 25,
                children: [
                  CustomText(text: "৳42,499",fSize: 19,fWeight: FontWeight.bold,),
                  CustomText(text: "৳49,499",color: Colors.grey,fSize: 12,fWeight: FontWeight.bold,tDeco: TextDecoration.lineThrough,),
                  CustomText(text: "-40%", color: Colors.orange,fSize: 15,),
                ],
              ),
              Divider(),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Icon(Icons.graphic_eq),
                      CustomText(text: "Super Extra Base")
                    ],
                  ),
                  SizedBox(width: 120,),
                  Row(
                    children: [
                      Icon(Icons.schedule),
                      CustomText(text: "Super Extra Base")
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 10,),
                  Row(
                    children: [
                      Icon(Icons.headphones),
                      CustomText(text: "Soft Padded Ear Cushions")
                    ],
                  ),
                  SizedBox(width: 70,),
                  Row(
                    children: [
                      Icon(Icons.verified_user),
                      CustomText(text: "1 Year Warranty")
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}


