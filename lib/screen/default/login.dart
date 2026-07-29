import 'package:ecommerce/custom_Widget/basic_default/button.dart';
import 'package:ecommerce/custom_Widget/basic_default/text_field.dart';
import 'package:ecommerce/custom_Widget/basic_default/text_widget.dart';
import 'package:ecommerce/screen/default/reg_screen.dart';
import 'package:flutter/material.dart';

import 'fpass_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                height: 120,
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
                          title: 'Welcome Back',
                          tSize: 35,
                          tColor: Colors.black,
                        ),
                        Icon(Icons.celebration),
                      ],
                    ),
                    MyTextWidget(
                      title: "Login to continue Shopping",
                      tColor: Colors.black,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 20,
                right: 20,
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: NetworkImage(
                        "https://png.pngtree.com/png-clipart/20240701/original/pngtree-grocery-shopping-bag-full-of-products-png-image_15456622.png",
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: 16,
                        width: 16,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: "Phone Number",
              tSize: 20,
              tColor: Colors.black,
            ),
          ),
          SizedBox(height: 5),
          MyTextField(
            controller: email,
            hint: "Enter Phone Number",
            prefixIcon: Icons.phone,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            child: MyTextWidget(
              title: "PassWord",
              tSize: 20,
              tColor: Colors.black,
            ),
          ),
          MyTextField(
            controller: password,
            hint: "Enter Password",
            prefixIcon: Icons.password,
            suffixIcon: Icons.visibility_off,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 15,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgetScreen()),
                    );
                  },
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              if (email.text == "trp@gmail.com" && password.text == "1234594") {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Row(
                      children: const [
                        Icon(Icons.check_circle, color: Colors.white),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Login Successfully",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    margin: const EdgeInsets.all(15),
                    elevation: 8,
                    duration: const Duration(seconds: 3),
                    action: SnackBarAction(
                      label: "OK",
                      textColor: Colors.yellow,
                      onPressed: () {},
                    ),
                  ),
                );

                // চাইলে এখানে অন্য page এ যাবেন
                // Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Row(
                      children: const [
                        Icon(Icons.error_outline, color: Colors.white),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Wrong Email or Password",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    backgroundColor: Colors.red,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            child: Card(
              margin: EdgeInsets.all(7),
              color: Colors.deepOrangeAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Log IN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(child: Divider(color: Colors.grey, thickness: .5)),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "or continue with",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),

                Expanded(child: Divider(color: Colors.grey, thickness: .5)),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
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
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
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
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Text("Don't have an account?"),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegScreen()),
                  );
                },
                child: Text(
                  "Register Now",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
