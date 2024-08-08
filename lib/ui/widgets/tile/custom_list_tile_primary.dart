import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class CustomListTilePrimary extends StatelessWidget {
  const CustomListTilePrimary({
    super.key,
    required this.title,
    required this.onTap,
    this.color = kPrimaryColor,
  });

  final String title;
  final Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(offset: Offset(0, 4), blurRadius: 4, color: Colors.black26)
        ],
        color: color,
        borderRadius: BorderRadius.circular(9),
      ),
      child: ListTile(
        onTap: onTap,
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                title,
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
