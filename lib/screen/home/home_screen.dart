import 'package:ecommerce/custom_Widget/text.dart';
import 'package:ecommerce/screen/home/widget/category_widget.dart';
import 'package:ecommerce/screen/home/widget/featured_card.dart';
import 'package:flutter/material.dart';
import '../../custom_Widget/title_heading.dart';
import '../../custom_Widget/search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../custom_Widget/slider.dart';
import '../../utilities/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 30,
        backgroundColor: Colors.orange.shade50,
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Dinajpur ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "Hat",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Badge(
            label: Text("3"),
            textColor: Colors.white,
            backgroundColor: Colors.deepOrange,
            child: Icon(Icons.shopping_cart_outlined),
          ),
          SizedBox(width: 30),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchWidget(),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            CustomSlider(),
            SizedBox(height: 12,),
            TitleHeading(text: "Categories", onTap: () {}),
            SizedBox(height: 12,),
            categories(),
            SizedBox(height: 12,),
            TitleHeading(text: "Features Products", onTap: () {}),
            SizedBox(height: 12,),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, i) =>
                    Featured_Card(
                      isShowDiscount: true,
                    ),
              ),
            ),
            SizedBox(height: 12,),
            TitleHeading(text: "New Arrivals", onTap: () {}),
            SizedBox(height: 12,),
            SizedBox(
              height: 160,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, i) => Featured_Card(),
              ),
            ),

          ],
        ),
      ),
    );
  }

  SizedBox categories() {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, i) => Category_Widget(),
      ),
    );
  }
}


