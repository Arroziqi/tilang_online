import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

import 'package:badges/badges.dart' as badges;
import 'package:gap/gap.dart';

PreferredSizeWidget customAppBar(){
  return AppBar(
    leading: Row(
      children: [
        const Gap(19),
        Image.asset(
          'assets/img/logo.png',
          width: 70,
        ),
        const Gap(15),
        Expanded(
          child: Text(
            'Halo, Kelompok Gajah Mada',
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 16,
              shadows: [const Shadow(
                color: Colors.black26,
                blurRadius: 5,
                offset: Offset(2, 2),
              ),],
            ),
          ),
        ),
      ],
    ),
    actions: [
      badges.Badge(
        badgeContent: Text(
          '3',
          style: whiteTextStyle.copyWith(
            fontWeight: bold,
            fontSize: 18,
          ),
        ),
        badgeAnimation: const badges.BadgeAnimation.slide(),
        badgeStyle: const badges.BadgeStyle(
          badgeColor: kBackgroundColor,
          borderSide: BorderSide(
            width: 4,
            color: Colors.white,
          ),
          padding: EdgeInsets.all(10),
        ),
        child: const Icon(
          Icons.notifications_none,
          size: 46,
          color: Colors.white,
        ),
      ),
      const Gap(24),
    ],
    leadingWidth: 268,
    toolbarHeight: 105,
  );
}