
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.obscureText = false,
    this.mLine,
    this.prefixIcon,
    this.suffixIcon
  });

  final TextEditingController controller;
  final String hint;
  final bool obscureText;
  final int? mLine;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        maxLines: mLine ?? 1,
        minLines: mLine,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hint,
          labelText: hint,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}