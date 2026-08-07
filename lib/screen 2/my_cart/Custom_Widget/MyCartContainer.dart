import 'package:flutter/material.dart';

import '../../../custom_Widget/text.dart';

class MyCartContainer extends StatelessWidget {
  const MyCartContainer({
    super.key, required this.imgUrl, required this.title, required this.price,
  });

  final String imgUrl;
  final String title;
  final String price;


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 180,
        //margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          //color: Colors.orange.shade50,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 170,
                  width: 100,
                  margin: EdgeInsets.all(5),
                  //padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                        imgUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                    fSize: 18,
                    fWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "৳ $price",
                    fSize: 18,
                    fWeight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade300,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              width: 40,
                              child: InkWell(
                                onTap: () {},
                                child: const Center(
                                  child: Icon(Icons.remove, size: 18),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              width: 1,
                              thickness: 2,
                              color: Colors.grey.shade300,
                            ),
                            const SizedBox(
                              width: 40,
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              width: 1,
                              thickness: 2,
                              color: Colors.grey.shade300,
                            ),
                            SizedBox(
                              width: 40,
                              child: InkWell(
                                onTap: () {},
                                child: const Center(
                                  child: Icon(Icons.add, size: 18),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.delete, color: Colors.red, size: 32),
                      SizedBox(width: 10),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}