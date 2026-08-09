import 'package:flutter/material.dart';

import '../../custom_Widget/text.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
        ],
      ),
    );
  }
}

