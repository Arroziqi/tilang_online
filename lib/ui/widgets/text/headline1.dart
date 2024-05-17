import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class Headline1 extends StatelessWidget {
  const Headline1({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: blackTextStyle.copyWith(
        fontWeight: semiBold,
        fontSize: 20,
      ),
    );
  }
}
