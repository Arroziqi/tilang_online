import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/widgets/text/description.dart';
import 'package:flutter_app/ui/widgets/text/headline3.dart';
import 'package:gap/gap.dart';

class TileCardNavigator extends StatelessWidget {
  const TileCardNavigator(
      {super.key,
      required this.onPressed,
      required this.title,
      required this.description,
      required this.imageUrl,
      this.padding = const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 26,
      ),
      this.backgroundColor = kPrimaryColor,
      this.color = Colors.white,
      this.borderRadius = 9});

  final Function() onPressed;
  final String title;
  final String description;
  final String imageUrl;
  final EdgeInsets padding;
  final Color backgroundColor;
  final Color color;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 4,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(imageUrl, width: 47, height: 47,),
            const Gap(12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Headline3(text: title),
                  const Gap(3),
                  TextDescription(
                    text: description,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
