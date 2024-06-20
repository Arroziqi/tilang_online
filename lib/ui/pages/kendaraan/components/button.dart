import 'package:flutter/material.dart';

import '../../../../shared/theme.dart';
import '../../../widgets/button/button_primary.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.onPressed, required this.text});

  final Function() onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: defaultMargin,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, -4),
            blurRadius: 3.3,
          ),
        ],
      ),
      child: buttonPrimary(
        onPressed: onPressed,
        text: text,
      ),
    );
  }
}
