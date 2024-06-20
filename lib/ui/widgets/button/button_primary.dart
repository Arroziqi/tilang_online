import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

Widget buttonPrimary({
  required Function() onPressed,
  required String text,
  WidgetStateProperty<Size?>? fixedSize,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: primaryButtonStyle.copyWith(fixedSize: fixedSize),
    child: Text(
      text,
      style: whiteTextStyle.copyWith(
        fontSize: 20,
        fontWeight: semiBold,
      ),
    ),
  );
}
