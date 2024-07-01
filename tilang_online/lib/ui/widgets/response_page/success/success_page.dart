import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../shared/theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/icons/done-2.png',
            width: 89,
          ),
          const Gap(25),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
