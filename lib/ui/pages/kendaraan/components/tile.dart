import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class Tile extends StatelessWidget {
  const Tile(
      {super.key,
      required this.imgUrl,
      required this.platNomer,
      required this.cc,
      required this.isVerified});

  final String imgUrl;
  final String platNomer;
  final String cc;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            const BoxShadow(
              color: Colors.black26,
              blurRadius: 5.4,
              spreadRadius: 8,
              offset: Offset(0, 0),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(
          vertical: defaultMargin,
          horizontal: 14,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 55.5,
              backgroundImage: AssetImage(imgUrl),
            ),
            const Gap(14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No. Plat',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    platNomer,
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: light,
                    ),
                  ),
                  Gap(6),
                  Text(
                    'Volume Langkah (cc)',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    "$cc cc",
                    style: blackTextStyle.copyWith(
                      fontSize: 20,
                      fontWeight: light,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 8,
        right: defaultMargin,
        child: Container(
          width: 80,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                isVerified
                    ? 'assets/img/icons/done.png'
                    : 'assets/img/icons/cycle.png',
                width: 16,
              ),
              Gap(7),
              Text(
                isVerified ? 'terverifikasi' : 'proses',
                style: blackTextStyle.copyWith(
                  fontSize: 10,
                  fontWeight: semiBold,
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
