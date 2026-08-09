import 'package:flutter/material.dart';

import '../../custom_Widget/text.dart';
import '../../utilities/colors.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                spacing: 15,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundImage: NetworkImage(
                              "https://pbs.twimg.com/media/HFiAjgpaoAAyFNy.jpg",
                            ),
                          ),
                          Positioned(
                            bottom: -5,
                            right: 5,
                            child: Icon(Icons.camera_alt_rounded, size: 30,color: Colors.deepOrange,),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 10,
                      children: [
                        CustomText(
                          text: "MS Dhoni",
                          fSize: 15,
                          fWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "+92 01186324564",
                          fSize: 12,
                          fWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "msdhoni01icc@gmail.com",
                          fSize: 10,
                          fWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 3,
                  children: [
                    CustomText(text: "Personal Information", fSize: 18, fWeight: FontWeight.bold,),
                    CustomText(text: "Full Name", fSize: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "MS Dhoni 7",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                    ),
                    CustomText(text: "Phone Number", fSize: 10,),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "+123 94213764",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    CustomText(text: "Email Address", fSize: 10,),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "msd07ind@gmail.com",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                    CustomText(text: "Date Of Birth", fSize: 10,),
                    TextField(
                      decoration: InputDecoration(
                          labelText: "10 November, 2000",
                          suffixIcon: Icon(Icons.edit_note),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 3,
                  children: [
                    CustomText(text: "Address", fSize: 18, fWeight: FontWeight.bold,),
                    CustomText(text: "Full Address", fSize: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "House 17, KhalishPur, Khulna",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: "City", fSize: 10,),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: "Khulna, Bangladesh",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(text: "Postal Code", fSize: 10,),
                              TextField(
                                decoration: InputDecoration(
                                    labelText: "5210",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10)
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    CustomText(text: "Country", fSize: 10,),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Bangladesh",
                        suffixIcon: Icon(Icons.arrow_downward),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColor.primaryColor, width: 3),
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                          text: "Save Changes",
                          fWeight: FontWeight.bold,
                          fSize: 14,
                          color: Colors.white,
                        ),
                      ],
                    )
                ),
              ),
            ),
            SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}

