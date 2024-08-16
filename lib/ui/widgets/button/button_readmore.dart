import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class ButtonReadmore extends StatelessWidget {
  const ButtonReadmore({super.key, required this.onPressed});

  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(
        'Read More',
        style: whiteTextStyle.copyWith(fontSize: 12, fontWeight: regular),
      ),
    );
  }
}
