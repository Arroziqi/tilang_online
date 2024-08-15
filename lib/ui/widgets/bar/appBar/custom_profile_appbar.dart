import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

PreferredSizeWidget customProfileAppBar({required context}) {
  return AppBar(
    backgroundColor: kBackgroundColor,
    leading: Padding(
      padding: const EdgeInsets.only(
        top: 27,
        bottom: 27,
        left: 27,
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 47,
            backgroundImage: AssetImage('assets/img/icons/user.png'),
          ),
          Gap(defaultMargin),
          SizedBox(
            width: 175,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gajah Mada',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                const Gap(7),
                Text(
                  'gajahmada123@gmail.com',
                  style: blackTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: regular,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    toolbarHeight: 168,
    leadingWidth: 325,
    actions: [
      Container(
        margin: const EdgeInsets.only(right: 27,),
        child: GestureDetector(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 22,
            child: Center(child: Image.asset('assets/img/icons/edit.png', width: 24,),),
          ),
        ),
      ),
    ],
  );
}
