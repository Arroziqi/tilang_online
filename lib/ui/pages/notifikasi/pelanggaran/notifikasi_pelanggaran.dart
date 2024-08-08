import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/notifikasi/pelanggaran/notifikasi_pelanggaran_view.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/tile/custom_list_tile_primary.dart';
import 'package:gap/gap.dart';

import '../../../../shared/theme.dart';

class NotifikasiPelanggaran extends StatelessWidget {
  const NotifikasiPelanggaran(
      {super.key,
      required this.tanggal,
      required this.jalan,
      required this.kesalahan,
      required this.denda,
      required this.id});

  final String tanggal;
  final String jalan;
  final String kesalahan;
  final int denda;
  final String id;

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
          'Anda mendapatkan pelanggaran pada tanggal $tanggal dengan rincian sebagai berikut',
          style: blackTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 33,
        horizontal: defaultMargin,
      ),
      child: ListView(
        children: [
          buildDescription(),
          const Gap(100),
          CustomListTilePrimary(
              title: "Pelangaran $kesalahan",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotifikasiPelanggaranView(
                            tanggal: tanggal,
                            jalan: jalan,
                            kesalahan: kesalahan,
                            denda: denda, id: id,)));
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(context),
    );
  }
}
