import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../custom_Widget/text.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    int counter = 1;
    
    return CarouselSlider(
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
                Stack(
                  alignment: Alignment.bottomCenter,
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
                    Positioned(
                      bottom: 5,

                        child: CustomText(text: "$i/5") //ChatGPT Wrong Ans
                    )
                  ],
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
    );
  }
}