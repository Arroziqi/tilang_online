import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class PlatPelanggaran extends StatelessWidget {
  const PlatPelanggaran({
    super.key,
    required this.status,
    required this.title,
    required this.onTap,
    this.color = kThirdColor,
  });

  final String status;
  final String title;
  final Function() onTap;
  final Color color;

  Widget buildStatus(String status) {
    return Container(
      margin: const EdgeInsets.only(right: 9),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Image.asset(
            color == kPrimaryColor ? 'assets/img/icons/trapesium.png' : 'assets/img/icons/trapesium-red.png',
            width: 137,
            height: 31,
          ),
          SizedBox(
            width: 115,
            child: Text(
              status,
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContent(String title) {
    return ListTile(
      onTap: onTap,
      tileColor: color,
      contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
      title: Text(
        title,
        style: whiteTextStyle.copyWith(
          fontSize: 16,
          fontWeight: medium,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        buildStatus(status),
        buildContent(title),
      ],
    );
  }
}
