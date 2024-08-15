import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class InputTextArea extends StatelessWidget {
  const InputTextArea({super.key, this.hintText, required this.controller});

  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 5,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: controller,
      style: blackTextStyle.copyWith(fontSize: 18, fontWeight: light,),
    );;
  }
}
