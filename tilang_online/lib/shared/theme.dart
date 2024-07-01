import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// layout
double defaultMargin = 21.0;
double defaultRadius = 12.0;

// colors
const Color kPrimaryColor = Color(0xff2C449C);
const Color kSecondaryColor = Color(0xff5F7DEB);
const Color kThirdColor = Color(0xffD24F4F);
const Color kFourthColor = Color(0xffFFB1B1);
const Color kBackgroundColor = Color(0xffFBBC24);
const Color kGreenColor = Color(0xff319B3C);
const Color kGreyColor = Color(0xff8D9091);

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

//button style
final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: kPrimaryColor,
  padding: const EdgeInsets.symmetric(
    vertical: 10,
  ),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(9),
  ),
);
