import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/kendaraan/kendaraan_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/kendaraan/components/tile.dart';
import 'package:gap/gap.dart';

import 'components/build_app_bar.dart';
import 'components/button.dart';

final controller = KendaraanItems();

class KendaraanLists extends StatelessWidget {
  const KendaraanLists({super.key});

  Widget buildContent() {
    return Padding(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 31,
      ),
      child: ListView.separated(
        itemCount: controller.items.length,
        itemBuilder: (context, index) => Tile(
            imgUrl: controller.items[index].imgUrl,
            platNomer: controller.items[index].platNomer,
            nik: controller.items[index].nik,
            isVerified: controller.items[index].isVerified),
        separatorBuilder: (context, index)=>Gap(31),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildContent(),
      bottomSheet: Button(
          onPressed: () {
            Navigator.pushNamed(context, '/kendaraan/form');
          },
          text: 'Tambah'),
    );
  }
}
