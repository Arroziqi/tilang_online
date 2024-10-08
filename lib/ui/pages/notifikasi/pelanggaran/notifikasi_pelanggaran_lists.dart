import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/notifikasi/pelanggaran/notifikasi_pelanggaran_tile_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/list/list_tiles.dart';
import 'package:flutter_app/ui/widgets/tile/custom_list_tile.dart';

final controller = NotifikasiPelanggaranTileItems();

Widget itemBuilder(BuildContext context, int index) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/pelanggaran/view');
    },
    child: CustomListTile(
      title: Center(
        child: Text(
          controller.items[index].title,
          style: whiteTextStyle.copyWith(
            fontWeight: semiBold,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      tileColor: kPrimaryColor,
    ),
  );
}

class NotifikasiPelanggaranLists extends StatelessWidget {
  const NotifikasiPelanggaranLists({super.key, required this.tanggal, required this.jalan, required this.kesalahan, required this.denda});

  final String tanggal;
  final String jalan;
  final String kesalahan;
  final int denda;


  @override
  Widget build(BuildContext context) {
    return ListTiles(
      itemCount: controller.items.length,
      itemBuilder: (context, index) => itemBuilder(context, index),
      gap: 32,
      padding: const EdgeInsets.symmetric(
        horizontal: 7,
      ),
    );
  }
}

