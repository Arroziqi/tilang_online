import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';

class AppTheme {
  static ThemeData getAppTheme(){
    return ThemeData(
      // default color scheme
      colorScheme: ColorScheme.fromSeed(
        seedColor: kBackgroundColor,
      ),

      // mengatur default text style
      textTheme: TextTheme(
        // untuk title page di bagian topbar
        titleLarge: whiteTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 24,
        ),
        // untuk title di tiap tab
        titleSmall: whiteTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 18,
        ),
        // untuk title di masing-masing page
        headlineLarge: blackTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 20,
        ),
        // untuk label form input
        headlineMedium: blackTextStyle.copyWith(
          fontWeight: bold,
          fontSize: 16,
        ),
        // untuk title di masing-masing tile
        headlineSmall: whiteTextStyle.copyWith(
          fontWeight: medium,
          fontSize: 15,
        ),
        // untuk paragraf, subtitle tiap page
        bodyMedium: blackTextStyle.copyWith(
          fontWeight: regular,
          fontSize: 16,
        ),
        // untuk paragraf normal
        bodySmall: whiteTextStyle.copyWith(
          fontWeight: regular,
          fontSize: 13,
        ),
        // untuk text button
        labelLarge: whiteTextStyle.copyWith(
          fontWeight: bold,
          fontSize: 20,
        ),
        // untuk label icon
        labelMedium: blackTextStyle.copyWith(
          fontWeight: regular,
          fontSize: 10,
        ),
        // untuk label data
        labelSmall: greyTextStyle.copyWith(
          fontWeight: light,
          fontSize: 12,
        ),
      ),

      // mengatur tema dari topbar
      appBarTheme: AppBarTheme(
        backgroundColor: kBackgroundColor,
        titleTextStyle: whiteTextStyle.copyWith(
          fontWeight: semiBold,
          fontSize: 24,
        ),
      ),

      // text button
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(kPrimaryColor),
          textStyle: WidgetStateProperty.all(whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: bold,
          ),),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(defaultRadius),),
          ),),
        ),
      ),
    );
  }
}