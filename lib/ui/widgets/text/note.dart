import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

Widget note() {
  return Column(
    children: [
      Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: defaultMargin),
        child: Text(
          'Note: Lakukan Pembayaran Selama 2 x 24 Jam atau STNK\nAnda akan kami blokir',
          style: blackTextStyle.copyWith(
            fontSize: 10,
            fontWeight: semiBold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
