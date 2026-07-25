import 'package:ecommerce/custom_Widget/button.dart';
import 'package:ecommerce/custom_Widget/text_field.dart';
import 'package:ecommerce/custom_Widget/text_widget.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'otp_screen.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({super.key});

  @override
  State<ForgetScreen> createState() => _ForgetScreenState();
}

class _ForgetScreenState extends State<ForgetScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 95,
              //backgroundColor: Colors.deepOrange,
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/6146/6146586.png",
                fit: BoxFit.cover,
              ),
            )
          ),
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
                  spacing: 10,
                  children: [
                    MyTextWidget(
                      title: 'Forgot Password?',
                      tSize: 25,
                      tColor: Colors.black,
                    ),
                    //Icon(Icons.account_box),
                  ],
                ),
                SizedBox(height: 10,),
                MyTextWidget(
                  title: "Don't worry! It happens. Please enter your registered phone or email address",
                  tColor: Colors.black,
                  mLine: 3,
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: InkWell(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                      side: BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Phone",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 250,
                child: InkWell(
                  child: Card(
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(8),
                    //   side: BorderSide(
                    //     color: Colors.green,
                    //     width: 2,
                    //   ),
                    // ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 5,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: "Phone Number",
              tSize: 14,
              tColor: Colors.black,
            ),
          ),
          MyTextField(
            controller: phone,
            hint: "Enter Phone Number",
            prefixIcon: Icons.phone,
          ),

          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
            },
            child: Card(
              margin: EdgeInsets.all(7),
              color: Colors.orangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Send OTP",
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

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text("Remember your password?"),
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text("Login Now", style: TextStyle(color:Colors.blue),)
              )
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
