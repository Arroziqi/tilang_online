import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/edukasi/edukasi_page.dart';
import 'package:flutter_app/ui/pages/home/home_page.dart';
import 'package:flutter_app/ui/pages/riwayat/riwayat_page.dart';
import 'package:flutter_app/ui/widgets/bar/bottomNavigationBar/custom_bottom_navigation_bar.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget buildContent() {
    return const HomePage();
  }

  Widget buildBottomNavigationBar() {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3.3,
            color: Colors.black26,
            offset: Offset(0, -4),
          ),
        ],
      ),
      child: const CustomBottomNavigationBar(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildContent(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }
}
