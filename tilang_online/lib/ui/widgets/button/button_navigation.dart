import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class ButtonNavigation extends StatelessWidget {
  final String text;
  final IconData icon;
  final String position;
  // final Function() onPressed;
  final PageController pageController;

  const ButtonNavigation({
    super.key,
    required this.text,
    required this.icon,
    this.position = 'after', required this.pageController,
    // required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: position == 'before'
          ? () => pageController.previousPage(
              duration: const Duration(milliseconds: 500), curve: Curves.easeIn)
          : () => pageController.nextPage(
              duration: const Duration(milliseconds: 600), curve: Curves.easeIn),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 13,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(106),
          side: const BorderSide(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (position == 'before')
            Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
          Text(
            text,
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 16,
            ),
          ),
          const Gap(3),
          if (position == 'after')
            Icon(
              icon,
              size: 20,
              color: Colors.black,
            ),
        ],
      ),
    );
  }
}
