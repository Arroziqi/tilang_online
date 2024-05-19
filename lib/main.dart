import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme_data.dart';
import 'package:flutter_app/ui/pages/onboarding/onboarding_page.dart';
import 'package:flutter_app/ui/pages/splash_page.dart';

import 'ui/pages/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // menghapus banner "DEBUG"
      debugShowCheckedModeBanner: false,

      // mengatur tema aplikasi
      theme: AppTheme.getAppTheme(),

      // set nama aplikasi
      title: 'MOTION',

      // routes
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const onboardingPage(),
        '/home': (context) => const MainPage(),
      },
    );
  }
}
