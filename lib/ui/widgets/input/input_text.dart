import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class InputText extends StatelessWidget {
  const InputText({super.key, this.hintText, required this.controller});

  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      controller: controller,
      style: blackTextStyle.copyWith(fontSize: 22, fontWeight: light,),
    );
  }
}
