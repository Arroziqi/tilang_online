import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/notifikasi/notifikasi_tile_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/list/list_tiles.dart';
import 'package:flutter_app/ui/widgets/tile/custom_list_tile.dart';

final controller = NotifikasiTileItems();

Widget itemBuilder(BuildContext context, int index) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/no-pelanggaran');
    },
    child: CustomListTile(
      leading: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Image.asset(controller.items[index].imageUrl),
      ),
      title: Center(
        child: Text(
          controller.items[index].title,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
        ),
      ),
      tileColor: kThirdColor,
    ),
  );
}

Widget notifikasiLists() {
  return ListTiles(
    itemCount: controller.items.length,
    itemBuilder: (context, index) => itemBuilder(context, index),
    gap: 20,
    padding: const EdgeInsets.symmetric(
      horizontal: 7,
    ),
  );
}
