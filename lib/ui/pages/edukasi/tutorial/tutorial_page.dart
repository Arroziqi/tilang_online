import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/edukasi/tutorial/tutorial_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/edukasi/tutorial/tutorial_single.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/button/button_readmore.dart';
import 'package:flutter_app/ui/widgets/input/search_column.dart';
import 'package:gap/gap.dart';

import '../../../widgets/text/text_black_m_20.dart';

/*
 * todo: lakukan styling sesuai dengan desain yang ada pada figma,
 *  todo: ada beberapa komponen yang harus distyling juga di file terpisah, pastikan baca comment dengan teliti
 *   controller merupakan instance dari model class [TutorialItems]
 */

final controller = TutorialItems();

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  Widget contentProvider() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: const Color(0xffE5E8F3)),
      child: ListView.separated(
        itemCount: controller.items.length,
        itemBuilder: (context, index) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(defaultMargin),
            TextBlackM20(text: controller.items[index].title),
            const Gap(11),
            Image.asset(
              controller.items[index].imgUrl,
            ),
            Gap(defaultMargin),
            SizedBox(
              height: 85,
              child: Text(
                controller.items[index].bodyText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const Gap(12),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              ButtonReadmore(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TutorialSingle(controller: controller),),);
                },
              ),
            ]),
            Gap(defaultMargin),
          ],
        ),
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const Gap(25),
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 43,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 17,
              right: 17,
            ),
            child: Column(
              children: [
                const TextBlackM20(
                  text: 'Cari tutorial lalu lintas',
                ), //   todo: atur style text nya di lib/ui/widgets/text/black_m_20.dart atau dengan klik [TextBlackM20] sambil menahan tombol CTRL
                const Gap(12),
                const SearchColumn(
                    text:
                        'text'), // todo: sesuaikan [text]nya lalu styling [SearchColumn]
                const Gap(27),
                contentProvider(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customBackNavigationAppBar(context: context, title: 'Tutorial'),
      body: buildContent(context),
    );
  }
}
