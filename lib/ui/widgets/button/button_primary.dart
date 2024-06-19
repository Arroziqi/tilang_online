import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: kPrimaryColor,
  padding: const EdgeInsets.symmetric(vertical: 20),
  textStyle: whiteTextStyle.copyWith(
    fontSize: 20,
    fontWeight: semiBold,
  ),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(9),
    ),
  ),
);

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
