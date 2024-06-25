import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class ButtonGoogle extends StatelessWidget {
  const ButtonGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: defaultMargin),
      child: TextButton(
        onPressed: () {
          //           GoogleProvider(clientId: "52856553378-ai4upaho4g4524mjh06hf32k1usot4gf.apps.googleusercontent.com");
          Navigator.pushNamed(context, '/home');
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
