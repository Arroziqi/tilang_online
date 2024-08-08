import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class CustomListTileRed extends StatelessWidget {
  const CustomListTileRed(
      {super.key, required this.title, required this.imageUrl, this.onTap});

  final String title;
  final String imageUrl;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(offset: Offset(0, 4), blurRadius: 4, color: Colors.black26)
        ],
        color: kThirdColor,
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
              ))
            ],
          ),
        ),
        leading: SizedBox(
          width: 100,
          child: Image.asset(
            imageUrl,
            width: 51,
            height: 51,
          ),
        ),
      ),
    );
  }
}
