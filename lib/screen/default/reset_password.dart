import 'package:ecommerce/custom_Widget/button.dart';
import 'package:ecommerce/custom_Widget/text_field.dart';
import 'package:ecommerce/custom_Widget/text_widget.dart';
import 'package:flutter/material.dart';

import 'login.dart';
import 'otp_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
              height: 100,
              width: double.infinity,
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 65,
                //backgroundColor: Colors.deepOrange,
                child: Icon(Icons.lock_reset, color: Colors.green,size: 45,),
                ),
            ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 60),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            height: 80,
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
                      title: 'Set New Paassword?',
                      tSize: 25,
                      tColor: Colors.black,
                    ),
                    //Icon(Icons.account_box),
                  ],
                ),
                SizedBox(height: 10,),
                MyTextWidget(
                  title: "Create a new password for your account",
                  tColor: Colors.black,
                  mLine: 3,
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: "New PassWord",
              tSize: 14,
              tColor: Colors.black,
            ),
          ),
          MyTextField(
            controller: password,
            hint: "Enter Password",
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: " Confirm New PassWord",
              tSize: 14,
              tColor: Colors.black,
            ),
          ),
          MyTextField(
            controller: password,
            hint: "Confirm New Password",
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          SizedBox(height: 5,),
          Card(
            color: Colors.greenAccent.shade100,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 5,
                children: [
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green,),
                      Text("At least 6 characters"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green,),
                      Text("One Uppercase letter"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green,),
                      Text("One Number"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green,),
                      Text("One Special Character"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.check_box, color: Colors.green,),
                      Text("At least 6 characters"),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Card(
              margin: EdgeInsets.all(7),
              color: Colors.deepOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Reset Password",
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
              InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text(" Back to Login", style: TextStyle(color:Colors.deepOrange),)
              )
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
