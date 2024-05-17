import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:gap/gap.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  // untuk membuat background
  Widget backgroundProvider() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/img/bg_splash.png'),
        fit: BoxFit.cover,
      )),
    );
  }

  // untuk membuat content pada splash
  Widget buildContent() {
    return Center(
      child: Column(
        // membuat content di tengah
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/img/logo.png',
            width: 148,
            height: 152,
          ),
          const Gap(4),
          Text(
            'Selamat Datang',
            style: whiteTextStyle.copyWith(
              fontWeight: light,
              fontSize: 30,
            ),
          ),
          const Gap(4),
          Text(
            'Motion',
            style: whiteTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 50,
            ),
          ),
          const Gap(39),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/onboarding');
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(110),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 91, vertical: 10),
            ),
            child: Text(
              'Next',
              style: blueTextStyle.copyWith(
                fontWeight: regular,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            backgroundProvider(),
            buildContent(),
          ],
        ),
      ),
    );
  }
}
