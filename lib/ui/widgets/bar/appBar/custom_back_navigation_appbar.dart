import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

PreferredSizeWidget customBackNavigationAppBar({
  required title,
  tabBar = false,
}) {
  return AppBar(
    leadingWidth: 130,
    toolbarHeight: 101,
    leading: Container(
      margin: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: const Icon(
              Icons.arrow_back_rounded,
              size: 39,
              color: Colors.white,
            ),
          ),
          Image.asset(
            'assets/img/logo.png',
            width: 70,
            height: 68,
          ),
        ],
      ),
    ),
    title: Text(
      title,
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
    bottom: tabBar
        ? TabBar(
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
          )
        : null,
  );
}
