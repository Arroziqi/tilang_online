import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class CustomInputImage extends StatelessWidget {
  const CustomInputImage({super.key, required this.text, this.onPressed});

  final String text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFFB1B1),
            padding:
                EdgeInsets.symmetric(vertical: 14, horizontal: defaultMargin),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: kThirdColor))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/icons/awan.png',
              width: 40,
              height: 40,
            ),
            Text(
              text,
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: regular,
                  color: const Color(0xffFF0000)),
            )
          ],
        ));
  }
}
