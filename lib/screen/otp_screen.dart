import 'package:ecommerce/custom_Widget/button.dart';
import 'package:ecommerce/custom_Widget/text_field.dart';
import 'package:ecommerce/custom_Widget/text_widget.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            height: 120,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    MyTextWidget(
                      title: 'Verify OTP',
                      tSize: 25,
                      tColor: Colors.black,
                    ),
                    //Icon(Icons.account_box),
                  ],
                ),
                SizedBox(height: 10),
                MyTextWidget(
                  title: "Enter 6-Digit OTP Send to",
                  tColor: Colors.black,
                ),
                SizedBox(height: 10),
                MyTextWidget(
                  title: "+88 01722224444",
                  tColor: Colors.deepOrangeAccent,
                ),
              ],
            ),
          ),
          SizedBox(height: 40),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: List.generate(
          //     6,
          //     (index) => Container(
          //       width: 45,
          //       height: 50,
          //       alignment: Alignment.center,
          //       decoration: BoxDecoration(
          //         border: Border.all(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(8),
          //       ),
          //       child: Text(
          //         "${index + 1}", // শুধু দেখানোর জন্য
          //         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          //       ),
          //     ),
          //   ),
          // ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
              6,
                  (index) => SizedBox(
                width: 45,
                height: 50,
                child: TextField(
                  textAlign: TextAlign.center,
                  keyboardType: TextInputType.number,
                  maxLength: 1,
                  decoration: InputDecoration(
                    counterText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ),
          ), //Copy from chatGPT

          SizedBox(height: 200),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text("Didn't Receive Code?"),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpScreen()),
                  );
                },
                child: Text("Resend OTP", style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
          SizedBox(height: 20),
          InkWell(
            child: Card(
              margin: EdgeInsets.all(7),
              color: Colors.orangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Verify OTP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 45),
        ],
      ),
    );
  }
}
