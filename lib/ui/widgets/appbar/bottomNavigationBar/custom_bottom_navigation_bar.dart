import 'package:flutter/material.dart';
import 'package:flutter_app/ui/widgets/appbar/bottomNavigationBar/custom_bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomBottomNavigationBarItem(imageUrl: 'assets/img/icons/beranda.png', text: 'Beranda', color: Colors.black,),
        CustomBottomNavigationBarItem(imageUrl: 'assets/img/icons/riwayat.png', text: 'Riwayat'),
        CustomBottomNavigationBarItem(imageUrl: 'assets/img/icons/edukasi.png', text: 'Edukasi'),
        CustomBottomNavigationBarItem(imageUrl: 'assets/img/icons/profil.png', text: 'Profil'),
      ],
    );
  }
}

