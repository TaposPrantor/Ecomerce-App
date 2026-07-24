import 'package:ecommerce/custom_Widget/button.dart';
import 'package:ecommerce/custom_Widget/text_field.dart';
import 'package:ecommerce/custom_Widget/text_widget.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class RegScreen extends StatefulWidget {
  const RegScreen({super.key});

  @override
  State<RegScreen> createState() => _RegScreenState();
}

class _RegScreenState extends State<RegScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            height: 100,
            width: double.infinity,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    MyTextWidget(
                      title: 'Create Account',
                      tSize: 25,
                      tColor: Colors.black,
                    ),
                    //Icon(Icons.account_box),
                  ],
                ),
                SizedBox(height: 10,),
                MyTextWidget(
                  title: "Sign up to get started",
                  tColor: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: "Full Name",
              tSize: 14,
              tColor: Colors.black,
            ),
          ),
          MyTextField(
            controller: phone,
            hint: "Enter Full Name",
            prefixIcon: Icons.person,
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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: "Email Address",
              tSize: 14,
              tColor: Colors.black,
            ),
          ),
          MyTextField(
            controller: phone,
            hint: "Enter your gmail",
            prefixIcon: Icons.email,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: "PassWord",
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
              title: " Confirm PassWord",
              tSize: 14,
              tColor: Colors.black,
            ),
          ),
          MyTextField(
            controller: password,
            hint: "Confirm Password",
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility_off,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              spacing: 15,
              children: [
                Icon(Icons.check_box, color: Colors.orange,),
                Text("I agree to the"),
                InkWell(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => FrgotScreen()));
                  },
                  child: Text(
                    "Terms & Conditions?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
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
                      "Register Now",
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
          SizedBox(height: 25,),
          SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                child: InkWell(
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/1280px-Facebook_f_logo_%282019%29.svg.png",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Facebook",
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.network(
                            "https://static0.howtogeekimages.com/wordpress/wp-content/uploads/2023/10/gmail-logo.jpg",
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            "Google",
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
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text("Allready have an account?"),
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
