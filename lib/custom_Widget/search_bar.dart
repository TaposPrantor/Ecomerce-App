import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          isDense: true,
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
        labelText: "Search for Products",
        suffixIcon: Icon(Icons.search),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5,),
          borderSide: BorderSide(color: Colors.green)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5,),
            borderSide: BorderSide(color: Colors.green)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5,),
            borderSide: BorderSide(color: Colors.red)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5,),
            borderSide: BorderSide(color: Colors.orange)
        )
      ),
    );
  }
}
