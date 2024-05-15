import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// layout
double defaultMargin = 21.0;
double defaultRadius = 12.0;

// colors
Color kPrimaryColor = const Color(0xff2C449C);
Color kSecondaryColor = const Color(0xff5F7DEB);
Color kThirdColor = const Color(0xffD24F4F);
Color kFourthColor = const Color(0xffFFB1B1);
Color kBackgroundColor = const Color(0xffFBBC24);
Color kGreenColor = const Color(0xff319B3C);
Color kGreyColor = const Color(0xff8D9091);

// text style
TextStyle blackTextStyle = GoogleFonts.kanit(
  color: Colors.black,
);
TextStyle whiteTextStyle = GoogleFonts.kanit(
  color: Colors.white,
);
TextStyle blueTextStyle = GoogleFonts.kanit(
  color: kPrimaryColor,
);
TextStyle greyTextStyle = GoogleFonts.kanit(
  color: kGreyColor,
);
TextStyle redTextStyle = GoogleFonts.kanit(
  color: kThirdColor,
);

// font weights
FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
