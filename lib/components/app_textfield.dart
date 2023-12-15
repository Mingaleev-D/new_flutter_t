import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({super.key, required this.hiltText});

  final String hiltText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: hiltText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          filled: true,
          fillColor: Colors.white.withOpacity(0.5)),
    );
  }
}
