import 'package:flutter/material.dart';
import 'package:my_app/app/utils/style_utils.dart';

import 'app_theme_data.dart';

class AppColorScheme {
  static final ColorScheme colorSchemeLight = ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: RadioLifeLightThemeColors.background,
    accentColor: RadioLifeLightThemeColors.accentColor,
    primarySwatch: RadioLifeLightThemeColors.primarySwatch,
    cardColor: RadioLifeLightThemeColors.backgroundLight,
    errorColor: error,
  );

  static final ColorScheme colorSchemeDark = ColorScheme.fromSwatch(
    brightness: Brightness.dark,
    backgroundColor: RadioLifeDarkThemeColors.background,
    accentColor: RadioLifeDarkThemeColors.accentColor,
    primarySwatch: RadioLifeDarkThemeColors.primarySwatch,
    cardColor: RadioLifeDarkThemeColors.backgroundLight,
    errorColor: error,
  );

  static const white = Colors.white;

  static MaterialColor get primarySwatchLight => RadioLifeLightThemeColors.primarySwatch;
  static MaterialColor get primarySwatchDark => RadioLifeDarkThemeColors.primarySwatch;

  static MaterialColor get accentColorLight => RadioLifeLightThemeColors.accentColor;
  static MaterialColor get accentColorDark => RadioLifeDarkThemeColors.accentColor;

  static Color get background => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.background
      : RadioLifeLightThemeColors.background;

  static Color get backgroundLight => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.backgroundLight
      : RadioLifeLightThemeColors.backgroundLight;

  static Color get border =>
      AppThemeData.appThemeModeIsDark ? RadioLifeDarkThemeColors.border : RadioLifeLightThemeColors.border;

  static Color get emphasis => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.emphasis
      : RadioLifeLightThemeColors.emphasis;

  static Color get emphasisLight => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.emphasisLight
      : RadioLifeLightThemeColors.emphasisLight;

  static Color get primary => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.primary
      : RadioLifeLightThemeColors.primary;

  static Color get primaryLight => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.primaryLight
      : RadioLifeLightThemeColors.primaryLight;

  static Color get shadow =>
      AppThemeData.appThemeModeIsDark ? RadioLifeDarkThemeColors.shadow : RadioLifeLightThemeColors.shadow;

  static Color get success => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.success
      : RadioLifeLightThemeColors.success;

  static Color get successLight => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.successLight
      : RadioLifeLightThemeColors.successLight;

  static Color get error =>
      AppThemeData.appThemeModeIsDark ? RadioLifeDarkThemeColors.error : RadioLifeLightThemeColors.error;

  static Color get errorLight => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.errorLight
      : RadioLifeLightThemeColors.errorLight;

  static Color get shimmerBaseColor => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.shimmerBaseColor
      : RadioLifeLightThemeColors.shimmerBaseColor;

  static Color get shimmerHighlightColor => AppThemeData.appThemeModeIsDark
      ? RadioLifeDarkThemeColors.shimmerHighlightColor
      : RadioLifeLightThemeColors.shimmerHighlightColor;

  static const lightGray = Color(0xffe4e4e4);
  static const darkPurple = Color(0xFF090B27);
}

class RadioLifeDarkThemeColors {
  static final MaterialColor primarySwatch = StyleUtils.createMaterialColor(primary);
  static final MaterialColor accentColor = StyleUtils.createMaterialColor(emphasis);

  static const background = Color(0xFF090B27);
  static const backgroundLight = Color(0xFF17173E);
  static const border = Color(0x33FFFFFF);
  static const emphasis = Color(0xFFFFFFFF);
  static const emphasisLight = Color(0x66FFFFFF);
  static const primary = Color(0xFF1E1E48);
  static const primaryLight = Color(0xFF7469D9);
  static const shadow = Color(0x26000000);
  static const success = Color(0xFF74DBB5);
  static const successLight = Color(0x3374DBB5);
  static const error = Color(0xFFCF3E5A);
  static const errorLight = Color(0x33CF3E5A);
  static const shimmerBaseColor = Color(0xFF17173E);
  static const shimmerHighlightColor = Color(0xFF292954);
}

class RadioLifeLightThemeColors {
  static final MaterialColor primarySwatch = StyleUtils.createMaterialColor(primary);
  static final MaterialColor accentColor = StyleUtils.createMaterialColor(emphasis);

  static const background = Color(0xFFFBF6EF);
  static const backgroundLight = Color(0xFFFBF6EF);
  static const border = Color(0x33232A65);
  static const emphasis = Color(0xFF232A65);
  static const emphasisLight = Color(0x66232A65);
  static const primary = Color(0xFFFFFFFF);
  static const primaryLight = Color(0xFF7469D9);
  static const shadow = Color(0x33232A65);
  static const success = Color(0xFF1BB58B);
  static const successLight = Color(0x3374DBB5);
  static const error = Color(0xFFCF3E5A);
  static const errorLight = Color(0x33CF3E5A);
  static const shimmerBaseColor = Color(0xFFEDE8E1);
  static const shimmerHighlightColor = Color(0xFFDBD4CA);
}
