import 'package:flutter/material.dart';

import '../../../models/home/feature_tile_items.dart';
import '../../widgets/list/list_tiles.dart';
import '../../widgets/tile/tile_card_navigator.dart';

final controller = FeatureTileItems();

Widget featureLists() {
  return ListTiles(
    itemBuilder: (context, index) => Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      child: TileCardNavigator(
        onPressed: () {
          switch (index) {
            case 0:
              Navigator.pushNamed(context, '/pelanggaran');
              break;
            case 1:
              Navigator.pushNamed(context, '/masukan');
              break;
            case 2:
              Navigator.pushNamed(context, '/kendaraan');
              break;
            case 3:
              Navigator.pushNamed(context, '/medsos');
              break;
            default:
              Navigator.pushNamed(context, '/kendaraan');
          }
        },
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        title: controller.items[index].title,
        description: controller.items[index].description,
        imageUrl: controller.items[index].imageUrl,
      ),
    ),
    itemCount: controller.items.length,
    padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
  );
}
