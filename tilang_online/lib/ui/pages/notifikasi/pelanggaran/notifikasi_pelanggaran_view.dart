import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/notifikasi/pelanggaran/notifikasi_pelanggaran_view_lists.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/button/button_primary.dart';
import 'package:gap/gap.dart';

import '../../../../shared/theme.dart';

class NotifikasiPelanggaranView extends StatelessWidget {
  const NotifikasiPelanggaranView({super.key});

  PreferredSizeWidget buildAppBar(BuildContext context) {
    return customBackNavigationAppBar(
      context: context,
      title: "Pelanggaran Anda",
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
          'Pelanggaran yang Anda lakukan adalah Tidak Memakai Helm',
          style: blackTextStyle.copyWith(
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget buildImage(String imageUrl) {
    return Image.asset(
      imageUrl,
      height: 221,
      width: 230,
    );
  }

  Widget buildButton(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: buttonPrimary(
        onPressed: () {
          Navigator.pushNamed(context, '/pelanggaran');
        },
        text: 'Lihat Pelanggaran',
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 33,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: ListView(
        children: [
          buildDescription(),
          const Gap(20),
          buildImage('assets/img/icons/helm.png'),
          const Gap(50),
          notifikasiPelanggaranViewLists(),
          const Gap(43),
          buildButton(context),
          const Gap(50),
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
