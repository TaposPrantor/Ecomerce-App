import 'package:flutter/material.dart';

class MyCartShipping extends StatelessWidget {
  const MyCartShipping({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.green.shade50
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.check_circle_outline, color: Colors.green,),
              SizedBox(width: 10,),
              Expanded(
                  child: Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(
                                text: "You are",
                                style: TextStyle(fontSize: 14)
                            ),
                            TextSpan(
                                text: " ৳ 603",
                                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                            ),
                            TextSpan(
                                text: " away from free shipping",
                                style: TextStyle(fontSize: 14)
                            ),
                          ]
                      )
                  )
              ),
              SizedBox(width: 10,),
              Icon(Icons.local_shipping_outlined, color: Colors.green,),
              SizedBox(width: 20,)
            ],
          ),


          const SizedBox(height: 14),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: 0.65, // 65%
              minHeight: 8,
              backgroundColor: Colors.grey.shade300,
              valueColor:
              const AlwaysStoppedAnimation<Color>(Colors.green),
            ),
          ),

        ],
      ),
    );
  }
}