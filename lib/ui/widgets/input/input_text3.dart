import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class InputText3 extends StatelessWidget {
  const InputText3({
    Key? key,
    required this.hintText,
    required this.controller,
    this.maxLines = 1,
  }) : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: greyTextStyle,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
