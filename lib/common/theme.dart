import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kPrimaryColor = Color.fromARGB(255, 138, 16, 26);
const kSecondaryColor = Color.fromARGB(255, 15, 27, 43);
const kTextColor = Color.fromARGB(255, 0, 0, 0);
const kTextLightColor = Color.fromARGB(255, 255, 255, 255);
const Color kgrey1 = Color.fromARGB(255, 138, 139, 141);
const Color kgrey2 = Color(0xff9fa7b1);

const kDefaultPadding = 20.0;

final TextTheme myTextTheme = TextTheme(
  headline1: GoogleFonts.poppins(
      fontSize: 81, fontWeight: FontWeight.w300, letterSpacing: -1.5),
  headline2: GoogleFonts.lobster(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      letterSpacing: -0.5,
      color: kTextLightColor),
  headline3: GoogleFonts.poppins(fontSize: 40, fontWeight: FontWeight.w400),
  headline4: GoogleFonts.poppins(
      fontSize: 29, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  headline5: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w400),
  headline6: GoogleFonts.poppins(
      fontSize: 17, fontWeight: FontWeight.w500, letterSpacing: 0.15),
  subtitle1: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.15),
  subtitle2: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 0.1),
  bodyText1: GoogleFonts.poppins(
      fontSize: 13, fontWeight: FontWeight.w400, letterSpacing: 0.5),
  bodyText2: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.25),
  button: GoogleFonts.poppins(
      fontSize: 12, fontWeight: FontWeight.w500, letterSpacing: 1.25),
  caption: GoogleFonts.poppins(
      fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 0.4),
  overline: GoogleFonts.poppins(
      fontSize: 8, fontWeight: FontWeight.w400, letterSpacing: 1.5),
);
