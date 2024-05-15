import 'package:flutter/material.dart';
import 'package:flutter_app/shared/themeData.dart';
import 'package:flutter_app/ui/pages/get_started/start_page1.dart';
import 'package:flutter_app/ui/pages/splash_page.dart';

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
        '/': (context) => SplashPage(),
        '/get-started': (context) => StartPage(),
      },
    );
  }
}
