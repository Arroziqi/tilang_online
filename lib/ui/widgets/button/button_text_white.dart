import 'package:flutter/material.dart';

import '../../../shared/theme.dart';

class ButtonTextWhite extends StatelessWidget {

  final PageController pageController;
  const ButtonTextWhite({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(backgroundColor: Colors.transparent),
      onPressed: ()=> pageController.animateToPage(0, duration: Duration(milliseconds: 600), curve: Curves.easeIn),
      child: Text(
        'Kembali',
        style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: bold),
      ),
    );
  }
}
