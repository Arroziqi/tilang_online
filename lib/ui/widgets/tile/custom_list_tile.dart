import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.tileColor = kPrimaryColor,
    this.textColor = Colors.white,
    this.leading,
    required this.title,
  });

  final Widget? leading;
  final Widget title;
  final Color tileColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: title,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(9),
      ),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 12,
      ),
      tileColor: tileColor,
      titleAlignment: ListTileTitleAlignment.center,
    );
  }
}
