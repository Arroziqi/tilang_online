import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class TextBlackM20 extends StatelessWidget {
  const TextBlackM20({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: blackTextStyle.copyWith(
      //   todo: tambahkan fontsize = 20
      //   todo: fontweight = medium (import dari theme.dart)
      ),
    );
  }
}
