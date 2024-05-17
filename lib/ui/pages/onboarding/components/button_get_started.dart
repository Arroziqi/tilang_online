import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/button/button_google.dart';
import 'package:flutter_app/ui/widgets/button/button_text_white.dart';
import 'package:gap/gap.dart';

class ButtonGetStarted extends StatelessWidget {

  final PageController pageController;

  const ButtonGetStarted({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ButtonGoogle(),
          const Gap(10),
          ButtonTextWhite(pageController: pageController,),
        ],
      ),
    );
  }
}
