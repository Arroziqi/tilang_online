import 'package:flutter/material.dart';
import 'package:flutter_app/models/edukasi/education_tile_items.dart';
import 'package:flutter_app/ui/widgets/list/list_tiles.dart';
import 'package:flutter_app/ui/widgets/tile/custom_list_tile.dart';

final controller = EducationTileItems();

Widget educationLists() {
  return ListTiles(
    itemCount: controller.items.length,
    itemBuilder: (context, index) => CustomListTile(
      leading: Image.asset(controller.items[index].imageUrl),
      title: Center(
        child: Text(controller.items[index].text),
      ),
    ),
    gap: 20,
    padding: const EdgeInsets.symmetric(
      horizontal: 7,
    ),
  );
}
