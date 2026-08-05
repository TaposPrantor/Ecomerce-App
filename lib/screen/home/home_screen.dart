import 'package:ecommerce/custom_Widget/text.dart';
import 'package:ecommerce/screen/home/widget/category_widget.dart';
import 'package:ecommerce/screen/home/widget/featured_card.dart';
import 'package:flutter/material.dart';
import '../../custom_Widget/bottom_Widget.dart';
import '../../custom_Widget/custom_cart.dart';
import '../../custom_Widget/title_heading.dart';
import '../../custom_Widget/search_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../../custom_Widget/slider.dart';
import '../../screen 2/my_order/my_order.dart';
import '../../utilities/colors.dart';
import '../all_product/all_product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
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
          CustomCart(),
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
            TitleHeading(
                text: "Categories",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProduct()));
                }
            ),
            SizedBox(height: 12,),
            categories(),
            SizedBox(height: 12,),
            TitleHeading(
                text: "Features Products",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProduct()));
                }
            ),
            SizedBox(height: 12,),
            Featured(),
            SizedBox(height: 12,),
            TitleHeading(
                text: "New Arrivals",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProduct()));
                }
            ),
            SizedBox(height: 12,),
            NewArrival(),
            SizedBox(height: 12,),

            TitleHeading(
                text: "Best Seller Products",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProduct()));
                }
            ),
            SizedBox(height: 12,),

            Trending(),

            SizedBox(height: 12,),
            TitleHeading(
                text: "Top Trending Products",
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>AllProduct()));
                }
            ),
            SizedBox(height: 12,),

            Trending(),

            SizedBox(height: 12,),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height*0.08,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomWidget(
              icon: (Icons.home),
              title: 'Home',
              isSelected: selectedIndex == 0,
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>HomeScreen())
                  );
                });
              },
            ),
            BottomWidget(
              icon: (Icons.grid_view),
              title: 'Category',
              isSelected: selectedIndex == 1,
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.search),
              title: 'Search',
              isSelected: selectedIndex == 2,
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            BottomWidget(
              icon: (Icons.article),
              title: 'Order',
              isSelected: selectedIndex == 3,
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context)=>MyOrder())
                  );
                });
              },
            ),
            BottomWidget(
              icon: (Icons.person),
              title: 'Account',
              isSelected: selectedIndex == 4,
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  SizedBox Trending() {
    return SizedBox(
            height: 120,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, i) => Container(
                height: 100,
                width: 120,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  //color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("https://newworld.co.za/cdn/shop/files/a5.webp?v=1750595591"),
                    )
                ),
              ),
            ),
          );
  }

  SizedBox NewArrival() {
    return SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, i) => Featured_Card(),
            ),
          );
  }

  SizedBox Featured() {
    return SizedBox(
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




