import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/home/custom_appbar.dart';
import 'package:flutter_app/ui/pages/home/feature_lists.dart';
import 'package:flutter_app/ui/widgets/text/description.dart';
import 'package:flutter_app/ui/widgets/text/headline1.dart';
import 'package:flutter_app/ui/widgets/tile/tile_button.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget buildTitleSection(){
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Headline1(text: 'Cek Data Kendaraan'),
        Gap(6),
        TextDescription(
          text:
          "Pengecekan denda Motion diperuntukkan bagi mereka yang berkepentingan dalam jual beli kendaraan & Persewaan Kendaraan",
          color: Colors.black,
        ),
      ],
    );
  }

  Widget buildImageSection(){
    return const TileButton(text: 'Cek Sekarang');
  }

  Widget buildFeatureLists() {
    return featureLists();
  }

  Widget buildContent(){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: defaultMargin,
      ),
      child: ListView(
        children: [
          buildTitleSection(),
          const Gap(20),
          buildImageSection(),
          buildFeatureLists(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: buildContent(),
    );
  }
}
