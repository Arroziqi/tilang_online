import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class TextDescription extends StatelessWidget {
  const TextDescription({super.key, required this.text, this.color = Colors.white});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: regular,
        fontSize: 15,
        color: color,
      ),
    );
  }
}
