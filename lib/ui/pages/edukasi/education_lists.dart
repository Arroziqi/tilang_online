import 'package:flutter/material.dart';
import 'package:flutter_app/models/edukasi/education_tile_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/list/list_tiles.dart';

final controller = EducationTileItems();

Widget educationLists() {
  return ListTiles(
    itemCount: controller.items.length,
    itemBuilder: (context, index) => ListTile(
      leading: Image.asset(controller.items[index].imageUrl,),
      title: Center(child: Text(controller.items[index].text),),
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12,),
      tileColor: kPrimaryColor,
      titleAlignment: ListTileTitleAlignment.center,
    ),
    gap: 20,
    padding: const EdgeInsets.symmetric(horizontal: 7,),
  );
}
