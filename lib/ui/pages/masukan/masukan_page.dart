import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/masukan/form_masukan.dart';
import 'package:flutter_app/ui/pages/masukan/masukan_kosong.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

class MasukanPage extends StatelessWidget {
  const MasukanPage({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
        title: 'Form Masukan', tabBar: true, context: context, tabs: ['Masukan Anda', 'Riwayat Anda']);
  }

  Widget buildContent() {
    return const TabBarView(
      children: <Widget>[
        FormMasukan(),
        MasukanKosong(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(context),
        body: buildContent(),
      ),
    );
  }
}


