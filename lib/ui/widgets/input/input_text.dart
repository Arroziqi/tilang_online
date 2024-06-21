import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class InputText extends StatelessWidget {
  InputText({super.key, this.hintText, required this.textController});

  // text controller
  final TextEditingController textController;

  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
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
