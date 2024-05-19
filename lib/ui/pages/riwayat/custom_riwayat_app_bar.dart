import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

PreferredSizeWidget customRiwayatAppBar() {
  return AppBar(
    leadingWidth: 89,
    toolbarHeight: 101,
    leading: Container(
      padding: const EdgeInsets.only(top: 16, left: 16),
      child: Image.asset(
        'assets/img/logo.png',
        width: 70,
        height: 68,
      ),
    ),
    title: Text(
      'Riwayat',
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
    bottom: TabBar(
      labelStyle: whiteTextStyle.copyWith(
        fontWeight: semiBold,
        fontSize: 18,
      ),
      indicatorColor: Colors.black,
      unselectedLabelColor: Colors.white,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: 5,
      tabs: const [
        Tab(
          text: 'Sedang Proses',
        ),
        Tab(
          text: 'Selesei',
        ),
      ],
    ),
  );
}
