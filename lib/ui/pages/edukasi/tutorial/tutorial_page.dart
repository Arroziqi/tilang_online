import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/edukasi/aturan/uu_class.dart';
import 'package:flutter_app/models/pages/edukasi/tutorial/tutorial_class.dart';
import 'package:flutter_app/models/pages/edukasi/tutorial/tutorial_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/edukasi/tutorial/tutorial_single.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/button/button_readmore.dart';
import 'package:flutter_app/ui/widgets/input/search_column.dart';
import 'package:flutter_app/ui/widgets/tile/blog_tile.dart';
import 'package:gap/gap.dart';

import '../../../widgets/text/text_black_m_20.dart';

final controller = TutorialItems();

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  List<TutorialClass> _foundedTutorials = [];

  @override
  void initState() {
    super.initState();

    setState(() {
      _foundedTutorials = controller.items;
    });
  }

  void _onSearch(String value) {
    setState(() {
      _foundedTutorials = controller.items
          .where((tutorial) => tutorial.title.toLowerCase().contains(value))
          .toList();
    });
  }

  Widget contentProvider() {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
          vertical: defaultMargin
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffE5E8F3)),
        child: ListView.separated(
          itemCount: _foundedTutorials.length,
          itemBuilder: (context, index) => BlogTile(
              title: _foundedTutorials[index].title,
              image: _foundedTutorials[index].image,
              body: _foundedTutorials[index].body),
          separatorBuilder: (BuildContext context, int index) =>
              const Gap(25),
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 17,
              right: 17,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextBlackM20(
                  text: 'Cari tutorial lalu lintas',
                ),
                const Gap(12),
                SearchColumn(
                  text: 'Tanjakan',
                  onSearch: _onSearch,
                ),
                const Gap(27),
              ],
            ),
          ),
          // tutorial list section
          contentProvider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customBackNavigationAppBar(context: context, title: 'Tutorial'),
      body: buildContent(context),
    );
  }
}
