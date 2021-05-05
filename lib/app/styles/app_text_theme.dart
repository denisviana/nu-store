import 'package:flutter/material.dart';

class AppTextTheme {
  /// https://material.io/design/typography/the-type-system.html#type-scale - Helps to create textTheme

  static TextTheme get textTheme => textThemeMontserrat;

  static TextTheme textThemeMontserrat = const TextTheme(
    headline1: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 96,
      fontWeight: FontWeight.w300,
    ),
    headline2: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 60,
      fontWeight: FontWeight.w300,
    ),
    headline3: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 48,
      fontWeight: FontWeight.w400,
    ),
    headline4: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 34,
      fontWeight: FontWeight.w400,
    ),
    headline5: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 16,
      fontWeight: FontWeight.w400,
    ),
    subtitle2: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.w500,
    ),
    bodyText1: TextStyle(fontFamily: 'Montserrat', fontSize: 16, fontWeight: FontWeight.w600),
    bodyText2: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 16,
    ),
    button: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
    caption: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 12,
      fontWeight: FontWeight.w400,
    ),
    overline: TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 10,
      fontWeight: FontWeight.w400,
    ),
  );
}
