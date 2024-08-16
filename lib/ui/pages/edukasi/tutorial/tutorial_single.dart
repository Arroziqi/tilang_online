import 'package:flutter/material.dart';
import 'package:flutter_app/models/pages/edukasi/tutorial/tutorial_items.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/bar/appBar/custom_back_navigation_appbar.dart';
import 'package:flutter_app/ui/widgets/text/text_black_m_20.dart';
import 'package:gap/gap.dart';

class TutorialSingle extends StatelessWidget {
  const TutorialSingle({super.key, required this.title, required this.image, required this.body});

  final String title;
  final String image;
  final String body;

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: defaultMargin),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              child: Container(
                padding: EdgeInsets.all(defaultMargin),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffE5E8F3)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextBlackM20(text: title),
                    const Gap(11),
                    Image.asset(
                      image,
                    ),
                    Gap(defaultMargin),
                    Text(
                      body,
                      style: blackTextStyle.copyWith(fontSize: 14, height: 1.7),
                    ),
                  ],
                ),
              ),
            ),
            Gap(defaultMargin)
          ],
        ),
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
