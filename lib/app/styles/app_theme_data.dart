import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/styles/theme_data_radio_life.dart';

import 'app_color_scheme.dart';
import 'app_font_size.dart';
import 'app_font_weight.dart';
import 'app_spacing.dart';
import 'app_text_theme.dart';

/// https://medium.com/flutter-community/page-transitions-using-themedata-in-flutter-c24afadb0b5d
class AppThemeData extends ThemeDataMyApp {
  AppThemeData._();

  static bool? _appThemeModeIsDark;

  static void setIfAppThemeModeIsDark({bool? isDark}) {
    _appThemeModeIsDark = isDark;
  }

  static bool get appThemeModeIsDark =>
      _appThemeModeIsDark ?? ThemeDataMyApp.isDark ?? true;

  static ThemeData get themeData =>
      appThemeModeIsDark ? themeDataDark : themeDataLight;
  static ThemeMode get themeMode => ThemeDataMyApp.isDark == null
      ? ThemeMode.system
      : appThemeModeIsDark
          ? ThemeMode.dark
          : ThemeMode.light;

  static final ThemeData themeDataLight = ThemeData(
    brightness: Brightness.light,
    accentColorBrightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primarySwatch: AppColorScheme.primarySwatchLight,
    accentColor: AppColorScheme.accentColorLight,
    textTheme: AppTextTheme.textTheme,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
    tabBarTheme: const TabBarTheme(
      labelStyle: TextStyle(
          fontSize: AppFontSize.primary,
          fontWeight: AppFontWeight.semiBold,
          fontFamily: 'Montserrat'),
      unselectedLabelStyle: TextStyle(
          fontSize: AppFontSize.primary,
          fontWeight: AppFontWeight.semiBold,
          fontFamily: 'Montserrat'),
      labelPadding: EdgeInsets.symmetric(horizontal: AppSpacing.extraSmall),
    ),
    scaffoldBackgroundColor: RadioLifeLightThemeColors.background,
    colorScheme: AppColorScheme.colorSchemeLight,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: AppColorScheme.successLight,
      cursorColor: AppColorScheme.success,
      selectionHandleColor: AppColorScheme.success,
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: RadioLifeLightThemeColors.background,
        brightness: Brightness.light,
        elevation: 0),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      },
    ),
    cupertinoOverrideTheme: const CupertinoThemeData(
      brightness: Brightness.light,
    ),
    iconTheme: IconThemeData(
      color: AppColorScheme.primarySwatchLight[500],
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
        colorScheme: AppColorScheme.colorSchemeLight,
        textTheme: ButtonTextTheme.primary),
  );

  static final ThemeData themeDataDark = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    brightness: Brightness.dark,
    accentColorBrightness: Brightness.dark,
    primarySwatch: AppColorScheme.primarySwatchDark,
    accentColor: AppColorScheme.accentColorDark,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    tabBarTheme: const TabBarTheme(
      labelStyle: TextStyle(
          fontSize: AppFontSize.primary,
          fontWeight: AppFontWeight.semiBold,
          fontFamily: 'Montserrat'),
      unselectedLabelStyle: TextStyle(
          fontSize: AppFontSize.primary,
          fontWeight: AppFontWeight.semiBold,
          fontFamily: 'Montserrat'),
      labelPadding: EdgeInsets.symmetric(horizontal: AppSpacing.extraSmall),
    ),
    textTheme: AppTextTheme.textTheme,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
    scaffoldBackgroundColor: RadioLifeDarkThemeColors.background,
    colorScheme: AppColorScheme.colorSchemeDark,
    textSelectionTheme: TextSelectionThemeData(
      selectionColor: AppColorScheme.successLight,
      cursorColor: AppColorScheme.success,
      selectionHandleColor: AppColorScheme.success,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: RadioLifeDarkThemeColors.background,
      elevation: 0,
      brightness: Brightness.dark,
    ),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
      },
    ),
    iconTheme: IconThemeData(
      color: AppColorScheme.primarySwatchDark[500],
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: RadioLifeDarkThemeColors.backgroundLight,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: RadioLifeDarkThemeColors.emphasis,
      unselectedItemColor: RadioLifeDarkThemeColors.emphasis.withOpacity(0.3),
      elevation: 0,
    ),
    buttonTheme: ButtonThemeData(
        colorScheme: AppColorScheme.colorSchemeDark,
        textTheme: ButtonTextTheme.primary),
  );
}
