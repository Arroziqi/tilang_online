import 'package:flutter/material.dart';

class InputText2 extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const InputText2(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
