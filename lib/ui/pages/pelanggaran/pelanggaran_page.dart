import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/pelanggaran/data_pelanggaran_kosong.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_appbar.dart';

class PelanggaranPage extends StatelessWidget {
  const PelanggaranPage({super.key});

  PreferredSizeWidget buildAppBar() {
    return customAppBar(title: 'Lihat Pelanggaran', tabBar: true);
  }

  Widget buildContent() {
    return const TabBarView(
      children: <Widget>[
        DataPelanggaranKosong(),
        DataPelanggaranKosong(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: buildAppBar(),
        body: buildContent(),
      ),
    );
  }
}
