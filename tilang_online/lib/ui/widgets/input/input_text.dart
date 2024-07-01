import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class InputText extends StatelessWidget {
  const InputText({super.key, this.hintText});

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      style: blackTextStyle.copyWith(fontSize: 22, fontWeight: light,),
    );
  }
}
