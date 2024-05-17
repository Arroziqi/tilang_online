import 'package:flutter/material.dart';
import 'package:flutter_app/ui/widgets/button/button_navigation.dart';

class CustomBottomNavigation extends StatelessWidget {

  final PageController pageController;

  const CustomBottomNavigation({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ButtonNavigation(
          text: 'Kembali',
          icon: Icons.navigate_before,
          position: 'before',
          pageController: pageController,
        ),
        ButtonNavigation(
          text: 'Lanjut',
          icon: Icons.navigate_next,
          pageController: pageController,
        ),
      ],
    );
  }
}
