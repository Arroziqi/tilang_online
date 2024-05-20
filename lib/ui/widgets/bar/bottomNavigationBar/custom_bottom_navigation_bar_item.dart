import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem(
      {super.key, required this.imageUrl, required this.text, this.color});

  final String imageUrl;
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 5,
            color: color,
          ),
          Image.asset(
            imageUrl,
            width: 36,
            height: 36,
          ),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
