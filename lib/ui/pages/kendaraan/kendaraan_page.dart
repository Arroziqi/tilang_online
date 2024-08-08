import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_kosong.dart';

import 'components/build_app_bar.dart';

class KendaraanPage extends StatelessWidget {
  const KendaraanPage({super.key});

  Widget buildContent() {
    return const KendaraanKosong();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(),
    );
  }
}
