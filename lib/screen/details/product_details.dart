import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/custom_Widget/custom_cart.dart';
import 'package:ecommerce/custom_Widget/text.dart';
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
          CarouselSlider(
            options: CarouselOptions(
              height: 250.0,
              autoPlay: true,
              viewportFraction: .9,
              autoPlayInterval: Duration(seconds: 2),
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://static.vecteezy.com/system/resources/thumbnails/066/223/245/small/professional-digital-camera-capturing-stunning-nature-shots-on-a-tripod-photo.jpg",
                              )
                          )
                        ),
                      ),
                      Card(
                        color: Colors.deepOrange,
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                            child: CustomText(text: "40% OFF")
                        )
                      )
                    ],
                  );
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
