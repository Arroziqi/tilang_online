import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

PreferredSizeWidget customEdukasiAppBar() {
  return AppBar(
    leadingWidth: 89,
    toolbarHeight: 101,
    leading: Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      child: Image.asset(
        'assets/img/logo.png',
        width: 70,
        height: 68,
      ),
    ),
    title: Text(
      'Edukasi',
      style: whiteTextStyle.copyWith(
        fontWeight: semiBold,
        fontSize: 24,
        shadows: [
          const Shadow(
            color: Colors.black26,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
    ),
  );
}
