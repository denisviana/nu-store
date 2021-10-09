import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  /// https://material.io/design/typography/the-type-system.html#type-scale - Helps to create textTheme

  static TextTheme get textTheme => textThemeMontserrat;

  static TextTheme textThemeMontserrat = TextTheme(
    headline1: GoogleFonts.montserrat(
      fontSize: 96,
      fontWeight: FontWeight.w300,
    ),
    headline2: GoogleFonts.montserrat(
      fontSize: 60,
      fontWeight: FontWeight.w300,
    ),
    headline3: GoogleFonts.montserrat(
      fontSize: 48,
      fontWeight: FontWeight.w400,
    ),
    headline4: GoogleFonts.montserrat(
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    headline5: GoogleFonts.montserrat(
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline6: GoogleFonts.montserrat(
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    subtitle2: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: GoogleFonts.montserrat(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodyText2: GoogleFonts.montserrat(
      fontSize: 16,
    ),
    button: GoogleFonts.montserrat(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    caption: GoogleFonts.montserrat(
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    overline: GoogleFonts.montserrat(
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
  );
}
