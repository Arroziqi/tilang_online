import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/notifikasi/pelanggaran/notifikasi_pelanggaran_lists.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:gap/gap.dart';

import '../../../../shared/theme.dart';

class NotifikasiPelanggaran extends StatelessWidget {
  const NotifikasiPelanggaran({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
      context: context,
      title: "Notifikasi",
    );
  }

  Widget buildDescription() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pelanggaran',
          style: blackTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
        Text(
          'Anda mendapatkan pelanggaran pada tanggal selasa, 15 mei 2024 dengan rincian sebagai berikut',
          style: blackTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget buildContent() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 33,
        horizontal: defaultMargin,
      ),
      child: ListView(
        children: [
          buildDescription(),
          const Gap(100),
          notifikasiPelanggaranLists(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(),
    );
  }
}
