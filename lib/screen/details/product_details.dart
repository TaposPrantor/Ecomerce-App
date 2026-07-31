import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/custom_Widget/basic_default/button.dart';
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
      body: ListView(
        children: [
          ProductImageSlider(),
          Column(
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Cannon DSLR Camera Hex45 v2.0", fWeight: FontWeight.bold,fSize: 18,),
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
              Divider(),
              Row(
                children: [CustomText(text: "Description")],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomText(text: "Enjoy powerful sound and deep base with Cannon Camera 450pro\n "
                        "Enjoy powerful sound and deep base with Cannon Headphone\n"
                        "Enjoy powerful sound and deep base with Cannon ",
                      mxLine: 3,
                        ),
                  )],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomText(text: "Brand"),
                      ),
                      Expanded(
                        flex: 4,
                        child: CustomText(text: ": Canon"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomText(text: "Model"),
                      ),
                      Expanded(
                        flex: 4,
                        child: CustomText(text: ": Probook 450 G4"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomText(text: "Battery Life"),
                      ),
                      Expanded(
                        flex: 4,
                        child: CustomText(text: ": Up to 15 hours"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomText(text: "Connectivity"),
                      ),
                      Expanded(
                        flex: 4,
                        child: CustomText(text: ": Bluetooth 5.1"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: CustomText(text: "Warranty"),
                      ),
                      Expanded(
                        flex: 4,
                        child: CustomText(text: ": 1 Year"),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  MyButton(bName: "Add Order", onTap: () {}, bWidth: 50,),
                  MyButton(bName: "Add Order", onTap: () {},bWidth: 50,),
                ],
              )

            ],
          )
        ],
      ),
    );
  }
}


