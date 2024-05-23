import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../shared/theme.dart';

class DataKosong extends StatelessWidget {
  const DataKosong({super.key, required this.imageUrl, required this.text});

  final String imageUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageUrl,
            width: 185,
          ),
          const Gap(25),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
