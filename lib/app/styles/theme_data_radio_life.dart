import 'package:flutter/material.dart' as theme_data_radio_life;

class ThemeDataRadioLife {
  static bool? _isDark;
  static void setIsDark(theme_data_radio_life.BuildContext context) {
    _isDark = theme_data_radio_life.MediaQuery.of(context).platformBrightness == theme_data_radio_life.Brightness.dark;
  }

  static bool? get isDark => _isDark;
}
