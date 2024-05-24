import 'package:flutter/material.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_page.dart';
import 'package:flutter_app/ui/pages/masukan/masukan_page.dart';
import 'package:flutter_app/ui/pages/media_sosial/media_sosial_page.dart';
import 'package:flutter_app/ui/pages/pelanggaran/pelanggaran_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/cubit/page_cubit.dart';

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
      ],
      child: MaterialApp(
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
          '/pelanggaran': (context) => const PelanggaranPage(),
          '/masukan': (context) => const MasukanPage(),
          '/kendaraan': (context) => const KendaraanPage(),
          '/medsos': (context) => const MediaSosialPage(),
        },
      ),
    );
  }
}
