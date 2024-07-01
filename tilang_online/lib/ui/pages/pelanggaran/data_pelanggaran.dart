import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/pelanggaran/pelanggaran_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/pelanggaran/components/plat_pelanggaran.dart';
import 'package:flutter_app/ui/widgets/text/note.dart';
import 'package:gap/gap.dart';

final controller = PelanggaranItems();

class DataPelanggaran extends StatelessWidget {
  const DataPelanggaran({super.key});

  Widget buildDescription() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
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
            'Pelanggaran yang Anda lakukan',
            style: blackTextStyle.copyWith(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildListPelanggaran(BuildContext context) {
    return ListView.separated(
      itemCount: controller.items.length,
      itemBuilder: (context, index) {
        return PlatPelanggaran(
          onTap: () {
            // Navigator.pushNamed(context, controller.items[index].route);
          },
          status: controller.items[index].status,
          title: controller.items[index].title,
        );
      },
      separatorBuilder: (context, index) => const Gap(29),
      shrinkWrap: true,
    );
  }

  Widget buildNote() {
    return note();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        left: defaultMargin,
        right: defaultMargin,
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                buildDescription(),
                buildListPelanggaran(context),
              ],
            ),
          ),
          buildNote(),
        ],
      ),
    );
  }
}
