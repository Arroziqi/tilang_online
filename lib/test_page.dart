import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/login_page.dart';
import 'package:flutter_app/services/google_auth.dart';
import 'package:flutter_app/shared/theme_data.dart';
import 'package:flutter_app/ui/pages/edukasi/aturan/aturan_page.dart';
import 'package:flutter_app/ui/pages/edukasi/tutorial/tutorial_page.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_form.dart';
import 'package:flutter_app/ui/pages/kendaraan/kendaraan_lists.dart';
import 'package:flutter_app/ui/pages/main_page.dart';
import 'package:flutter_app/ui/pages/masukan/masukan_page.dart';
import 'package:flutter_app/ui/pages/masukan/masukan_success.dart';
import 'package:flutter_app/ui/pages/notifikasi/notifikasi_page.dart';
import 'package:flutter_app/ui/pages/onboarding/onboarding_page.dart';
import 'package:flutter_app/ui/pages/pelanggaran/pelanggaran_page.dart';
import 'package:flutter_app/ui/pages/profil/data_pengemudi/data_pengemudi.dart';
import 'package:flutter_app/ui/pages/splash_page.dart';

import 'ui/pages/media_sosial/media_sosial_page.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if(snapshot.hasError){
            return Text(snapshot.error.toString());
          }

          if(snapshot.connectionState == ConnectionState.active){
            return MaterialApp(
                      // menghapus banner "DEBUG"
                      debugShowCheckedModeBanner: false,

                      // mengatur tema aplikasi
                      theme: AppTheme.getAppTheme(),

                      // set nama aplikasi
                      title: 'MOTION',

                      home: snapshot.data != null ? const MainPage() : const OnboardingPage(),

                      // routes
                      routes: snapshot.data != null ? {
                        '/home': (context) => const MainPage(),
                        '/notifikasi': (context) => const NotifikasiPage(),
                        '/pelanggaran': (context) => const PelanggaranPage(),
                        '/masukan': (context) => const MasukanPage(),
                        '/masukan/success': (context) => const MasukanSuccess(),
                        '/kendaraan': (context) => const KendaraanLists(),
                        '/kendaraan/form': (context) => const KendaraanForm(),
                        '/medsos': (context) => const MediaSosialPage(),
                        '/profile/data-pengemudi': (context) => const DataPengemudi(),
                        '/edukasi/tutorial': (context) => const TutorialPage(),
                        '/edukasi/aturan': (context) => const AturanPage(),
                      } : {
                        '/onboarding': (context) => const OnboardingPage(),
                      },
                    );
            // if(snapshot.data == null){
            //
            // }else{
            //   return MaterialApp(
            //     home: Scaffold(
            //       body: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //         children: [
            //           Text(FirebaseAuth.instance.currentUser!.displayName!),
            //           ElevatedButton(onPressed: (){
            //             GoogleAuth().signOutFromGoogle();
            //           }, child: Text('LogOut')),
            //         ],
            //       ),
            //     ),
            //   );
            // }
          }

          return Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}
