import 'package:flutter/material.dart';

class ButtonRing extends StatelessWidget {
  const ButtonRing({
    super.key,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 15,
    this.padding = const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
    this.color = Colors.black,
    this.backgroundColor = Colors.white,
    required this.onPressed,
    this.borderRadius = 9,
  });

  final Function() onPressed;
  final String text;
  final FontWeight fontWeight;
  final double fontSize;
  final EdgeInsets padding;
  final Color backgroundColor;
  final Color color;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
        ),
      ),
    );
  }
}
