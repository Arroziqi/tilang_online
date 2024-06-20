import 'package:flutter/material.dart';

import '../../../../shared/theme.dart';
import '../../../widgets/button/button_primary.dart';

class ButtonDouble extends StatelessWidget {
  const ButtonDouble({super.key, required this.onPressed, required this.texts});

  final List<Function()> onPressed;
  final List<String> texts;

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: texts.asMap().entries.map((text)=>buttonPrimary(
          onPressed: onPressed[text.key],
          text: text.value,
        ),).toList(),
      ),
    );
  }
}
