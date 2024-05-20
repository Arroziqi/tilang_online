import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/riwayat/custom_riwayat_app_bar.dart';
import 'package:flutter_app/ui/pages/riwayat/data_kosong_page.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_appbar.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  PreferredSizeWidget buildAppBar() {
    return customAppBar(title: 'Riwayat', tabBar: true);
  }

  Widget buildContent() {
    return const TabBarView(
      children: <Widget>[
        DataKosong(),
        DataKosong(),
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
