import 'package:flutter/material.dart';
import 'package:flutter_app/ui/widgets/bar/bottomNavigationBar/custom_bottom_navigation_bar_item.dart';

Widget customBottomNavigationBar() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      CustomBottomNavigationBarItem(
        imageUrl: 'assets/img/icons/beranda.png',
        text: 'Beranda',
        index: 0,
      ),
      CustomBottomNavigationBarItem(
        imageUrl: 'assets/img/icons/riwayat.png',
        text: 'Riwayat',
        index: 1,
      ),
      CustomBottomNavigationBarItem(
        imageUrl: 'assets/img/icons/edukasi.png',
        text: 'Edukasi',
        index: 2,
      ),
      CustomBottomNavigationBarItem(
        imageUrl: 'assets/img/icons/profil.png',
        text: 'Profil',
        index: 2,
      ),
    ],
  );
}
