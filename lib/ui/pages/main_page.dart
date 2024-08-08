import 'package:flutter/material.dart';
import 'package:flutter_app/cubit/page_cubit.dart';
import 'package:flutter_app/ui/pages/edukasi/edukasi_page.dart';
import 'package:flutter_app/ui/pages/home/home_page.dart';
import 'package:flutter_app/ui/pages/pelanggaran/pelanggaran_page.dart';
import 'package:flutter_app/ui/pages/profil/profil_page.dart';
import 'package:flutter_app/ui/widgets/bar/bottomNavigationBar/custom_bottom_navigation_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Widget buildContent(int pageIndex) {
    switch (pageIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const PelanggaranPage();
      case 2:
        return const EdukasiPage();
      case 3:
        return const ProfilPage();
      default:
        return const HomePage();
    }
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
    return BlocBuilder<PageCubit, int>(
      builder: (context, pageIndex) {
        return Scaffold(
          body: buildContent(pageIndex),
          bottomNavigationBar: buildBottomNavigationBar(),
        );
      },
    );
  }
}
