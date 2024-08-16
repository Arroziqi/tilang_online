import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/edukasi/tutorial/tutorial_single.dart';
import 'package:gap/gap.dart';

import '../button/button_readmore.dart';
import '../text/text_black_m_20.dart';

class BlogTile extends StatelessWidget {
  const BlogTile({super.key, required this.title, required this.image, required this.body});

  final String title;
  final String image;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: blackTextStyle.copyWith(fontSize: 12,),
        ),
        const Gap(12),
        Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          ButtonReadmore(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      TutorialSingle(title: title, image: image, body: body,),),);
            },
          ),
        ]),
      ],
    );
  }
}
