import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/notifikasi/pelanggaran/notifikasi_pelanggaran_view_tile_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/list/list_tiles.dart';
import 'package:flutter_app/ui/widgets/tile/custom_list_tile_3.dart';

final controller = NotifikasiPelanggaranViewTileItems();

Widget itemBuilder(BuildContext context, int index) {
  return GestureDetector(
    onTap: () {
      // Navigator.pushNamed(context, '/');
    },
    child: CustomListTile3(
      leading: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Image.asset(controller.items[index].imageUrl),
      ),
      title: Expanded(
        child: Text(
          controller.items[index].title,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      ),
      subtitle: Expanded(
        child: Text(
          controller.items[index].subtitle,
          style: whiteTextStyle,
        ),
      ),
      tileColor: kPrimaryColor,
    ),
  );
}

Widget notifikasiPelanggaranViewLists() {
  return ListTiles(
    itemCount: controller.items.length,
    itemBuilder: (context, index) => itemBuilder(context, index),
    gap: 20,
    padding: const EdgeInsets.symmetric(
      horizontal: 14,
    ),
  );
}
