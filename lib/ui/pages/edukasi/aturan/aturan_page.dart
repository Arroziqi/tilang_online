import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/edukasi/aturan/uu_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/input/search_column.dart';
import 'package:flutter_app/ui/widgets/text/text_black_m_20.dart';
import 'package:gap/gap.dart';

/*
* todo: styling ulang jika belum sesuai dengan desain figma
*  todo: buatkan bottomsheet yang ada tombol kembalinya, fungsinya bisa ditiru aja yang ada di [customBackNavigationBar]
*   todo: buat [listTile]-nya bisa direct ke external url,
*    hint: pakai package url_launcher
 */

final controller = UuItems();

class AturanPage extends StatelessWidget {
  const AturanPage({super.key});

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 32,
        vertical: defaultMargin,
      ),
      child: Column(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextBlackM20(text: 'Cari Peraturan Perundang-undangan'),
              Gap(12),
              SearchColumn(text: 'Lalu Lintas'),
              Gap(27),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 105,
            ),
            child: ListView.separated(
              itemBuilder: (context, index) => GestureDetector(
                child: ListTile(
                  title: Text(
                    controller.items[index].title,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 12),
                  tileColor: kPrimaryColor,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9)),
                ),
              ),
              separatorBuilder: (context, index) => Gap(defaultMargin),
              itemCount: controller.items.length,
              shrinkWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBackNavigationAppBar(context: context, title: 'Peraturan'),
      body: buildContent(context),
      bottomSheet: Container(
        height: 105,
        color: Colors.black,
      ),
    );
  }
}
