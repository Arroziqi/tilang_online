import 'package:flutter/material.dart';
import 'package:flutter_app/cubit/page_cubit.dart';
import 'package:flutter_app/services/google_auth.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: TextButton(
        onPressed: () {
          GoogleAuth().signInWithGoogle();
          // untuk reset homepage ke beranda
          context.read<PageCubit>().resetPage();
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/img/icons/google_icon.png',
              width: 26,
              height: 26,
            ),
            const Gap(16),
            Text(
              'Login dengan Google',
              style: blackTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
