import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/services/firestore_pelanggaran.dart';
import 'package:flutter_app/shared/theme.dart';

import 'package:badges/badges.dart' as badges;
import 'package:gap/gap.dart';

FirestorePelanggaran firestorePelanggaran = FirestorePelanggaran();

PreferredSizeWidget customHomeAppBar(
    {required BuildContext context, required title}) {
  return AppBar(
    leading: Row(
      children: [
        const Gap(19),
        Image.asset(
          'assets/img/logo.png',
          width: 70,
        ),
        const Gap(15),
        Expanded(
          child: Text(
            'Halo, $title',
            style: blackTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 16,
              shadows: [
                const Shadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
    actions: [
      GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/notifikasi');
        },
        child: StreamBuilder<QuerySnapshot>(
            stream: firestorePelanggaran.getPelanggarans(),
            builder: (context, snapshot) {

              if(snapshot.hasData){
                List pelanggarans = snapshot.data!.docs;
                return badges.Badge(
                  badgeContent: Text(
                    pelanggarans.length.toString(),
                    style: whiteTextStyle.copyWith(
                      fontWeight: bold,
                      fontSize: 18,
                      color: pelanggarans.isNotEmpty ? Colors.white : Colors.transparent,
                    ),
                  ),
                  badgeAnimation: const badges.BadgeAnimation.slide(),
                  badgeStyle: badges.BadgeStyle(
                    badgeColor: pelanggarans.isNotEmpty ? kBackgroundColor : Colors.transparent,
                    borderSide: BorderSide(
                      width: 4,
                      color: pelanggarans.isNotEmpty ? Colors.white : Colors.transparent,
                    ),
                    padding: const EdgeInsets.all(10),
                  ),
                  child: const Icon(
                    Icons.notifications_none,
                    size: 46,
                    color: Colors.white,
                  ),
                );
              }else{
                return const badges.Badge(
                  badgeAnimation: badges.BadgeAnimation.slide(),
                  child: Icon(
                    Icons.notifications_none,
                    size: 46,
                    color: Colors.white,
                  ),
                );
              }


            }),
      ),
      const Gap(24),
    ],
    leadingWidth: 300,
    toolbarHeight: 105,
  );
}
