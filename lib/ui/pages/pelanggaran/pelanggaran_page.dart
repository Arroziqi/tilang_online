import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/pelanggaran/data_pelanggaran.dart';
import 'package:flutter_app/ui/pages/pelanggaran/data_pelanggaran_kosong.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_appbar.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';

class PelanggaranPage extends StatelessWidget {
  const PelanggaranPage({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
        title: 'Lihat Pelanggaran', tabBar: true, context: context);
  }

  Widget buildContent() {
    return const TabBarView(
      children: <Widget>[
        DataPelanggaran(),
        DataPelanggaranKosong(),
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
