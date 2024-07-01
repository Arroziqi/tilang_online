import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class Headline3 extends StatelessWidget {
  const Headline3({super.key, required this.text, this.color = Colors.white,});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: medium,
        fontSize: 15,
        color: color,
      ),
    );
  }
}
