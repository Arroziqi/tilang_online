import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class CustomListTile3 extends StatelessWidget {
  const CustomListTile3({
    super.key,
    this.tileColor = kPrimaryColor,
    this.textColor = Colors.white,
    this.leading,
    required this.title,
    this.subtitle,
  });

  final Widget? leading;
  final Widget? subtitle;
  final Widget title;
  final Color tileColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      subtitle: subtitle,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      tileColor: tileColor,
      titleAlignment: ListTileTitleAlignment.center,
      isThreeLine: true,
    );
  }
}
