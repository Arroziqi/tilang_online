import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class Tile extends StatelessWidget {
  const Tile(
      {super.key,
      this.imgUrl = 'assets/img/kendaraan/ninjazr.jpg',
      required this.platNomer,
      required this.cc,
      required this.isVerified,
      this.fotoKendaraan});

  final String imgUrl;
  final String platNomer;
  final String cc;
  final String? fotoKendaraan;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 3,
              spreadRadius: 0.3,
              offset: Offset(0, 3),
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
              backgroundImage: fotoKendaraan == null
                  ? AssetImage(imgUrl)
                  : NetworkImage(fotoKendaraan!) as ImageProvider,
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
                  const Gap(6),
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
        child: SizedBox(
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
              const Gap(7),
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
