import 'package:flutter/material.dart';
import 'package:flutter_app/models/home/feature_tile_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/text/description.dart';
import 'package:flutter_app/ui/widgets/text/headline1.dart';
import 'package:flutter_app/ui/widgets/tiles/tile_button.dart';
import 'package:flutter_app/ui/widgets/tiles/tile_card_navigator.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = FeatureTileItems();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: defaultMargin,
      ),
      child: ListView(
        children: [
          const Headline1(text: 'Cek Data Kendaraan'),
          const Gap(6),
          const TextDescription(
            text:
                "Pengecekan denda Motion diperuntukkan bagi mereka yang berkepentingan dalam jual beli kendaraan & Persewaan Kendaraan",
            color: Colors.black,
          ),
          const Gap(20),
          const TileButton(text: 'Cek Sekarang'),
          const Gap(20),
          // ListView.builder(
          //   itemCount: controller.items.length,
          //   padding: const EdgeInsets.symmetric(horizontal: 30),
          //   itemBuilder: (context, index) => Container(
          //     margin: const EdgeInsets.only(
          //       top: 20,
          //       left: 30,
          //       right: 30,
          //     ),
          //     child: TileCardNavigator(
          //       onPressed: () {},
          //       title: controller.items[index].title,
          //       description: controller.items[index].description,
          //       imageUrl: controller.items[index].imageUrl,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
