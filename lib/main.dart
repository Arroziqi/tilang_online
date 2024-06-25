import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_options.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_form.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_lists.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_page.dart';
import 'package:flutter_app/ui/pages/masukan/masukan_page.dart';
import 'package:flutter_app/ui/pages/masukan/masukan_success.dart';
import 'package:flutter_app/ui/pages/media_sosial/media_sosial_page.dart';
import 'package:flutter_app/ui/pages/notifikasi/notifikasi_page.dart';
import 'package:flutter_app/ui/pages/notifikasi/pelanggaran/notifikasi_pelanggaran.dart';
import 'package:flutter_app/ui/pages/notifikasi/pelanggaran/notifikasi_pelanggaran_view.dart';
import 'package:flutter_app/ui/pages/pelanggaran/pelanggaran_page.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app/cubit/page_cubit.dart';

import 'package:flutter_app/shared/theme_data.dart';
import 'package:flutter_app/ui/pages/onboarding/onboarding_page.dart';
import 'package:flutter_app/ui/pages/splash_page.dart';

import 'ui/pages/main_page.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
``
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
          '/onboarding': (context) => const OnboardingPage(),
          '/home': (context) => const MainPage(),
          '/notifikasi': (context) => const NotifikasiPage(),
          '/pelanggaran': (context) => const PelanggaranPage(),
          '/masukan': (context) => MasukanPage(),
          '/masukan/success': (context) => const MasukanSuccess(),
          '/kendaraan': (context) => const KendaraanLists(),
          '/kendaraan/form': (context) => const KendaraanForm(),
          '/kendaraan/view': (context) => const KendaraanLists(),
          '/medsos': (context) => const MediaSosialPage(),
          '/no-pelanggaran': (context) => const NotifikasiPelanggaran(),
          '/pelanggaran/view': (context) => const NotifikasiPelanggaranView(),
        },
      ),
    );
  }
}
