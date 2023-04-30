import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/helpers/ui_helper.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/styles/app_font_size.dart';
import 'package:my_app/app/styles/app_theme_data.dart';

enum AppButtonColor { success, primary, emphasis }

extension AppButtonColorExtension on AppButtonColor {
  Color get backgroundColor {
    switch (this) {
      case AppButtonColor.success:
        return AppColorScheme.success;
      case AppButtonColor.primary:
        return AppColorScheme.success;
      case AppButtonColor.emphasis:
        return AppColorScheme.primary;
    }
  }

  Color get textColor {
    switch (this) {
      case AppButtonColor.success:
        return AppColorScheme.primary;
      case AppButtonColor.primary:
        return AppColorScheme.success;
      case AppButtonColor.emphasis:
        return AppColorScheme.emphasis;
    }
  }

  Color get borderColor {
    switch (this) {
      case AppButtonColor.success:
        return AppColorScheme.success;
      case AppButtonColor.primary:
        return AppColorScheme.success;
      case AppButtonColor.emphasis:
        return AppColorScheme.emphasis;
    }
  }
}

enum AppButtonType { circular, rounded }

extension AppButtonTypeExtension on AppButtonType {
  double get cornerRadius {
    switch (this) {
      case AppButtonType.circular:
        return 100;
      case AppButtonType.rounded:
        return 100;
    }
  }
}

enum AppButtonStyle { filled, bordered, clear, destructive, disabled }

extension AppButtonStyleExtension on AppButtonStyle {
  bool get showBackground {
    switch (this) {
      case AppButtonStyle.filled:
        return true;
      case AppButtonStyle.bordered:
        return false;
      case AppButtonStyle.clear:
        return false;
      case AppButtonStyle.destructive:
        return true;
      case AppButtonStyle.disabled:
        return true;
    }
  }

  bool get showBorder {
    switch (this) {
      case AppButtonStyle.filled:
        return false;
      case AppButtonStyle.bordered:
        return true;
      case AppButtonStyle.clear:
        return false;
      case AppButtonStyle.destructive:
        return false;
      case AppButtonStyle.disabled:
        return false;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case AppButtonStyle.filled:
        return AppColorScheme.success;
      case AppButtonStyle.bordered:
        return Colors.transparent;
      case AppButtonStyle.clear:
        return Colors.transparent;
      case AppButtonStyle.destructive:
        return AppColorScheme.error;
      case AppButtonStyle.disabled:
        return AppColorScheme.success.withOpacity(0.2);
    }
  }

  Color get textColor {
    switch (this) {
      case AppButtonStyle.filled:
        return AppColorScheme.background;
      case AppButtonStyle.bordered:
        return AppThemeData.appThemeModeIsDark == true
            ? AppColorScheme.emphasis
            : AppColorScheme.success;
      case AppButtonStyle.clear:
        return AppColorScheme.emphasis;
      case AppButtonStyle.destructive:
        return Colors.white;
      case AppButtonStyle.disabled:
        return AppColorScheme.background;
    }
  }

  Color get borderColor {
    switch (this) {
      case AppButtonStyle.filled:
        return AppColorScheme.success;
      case AppButtonStyle.bordered:
        return AppThemeData.appThemeModeIsDark == true
            ? AppColorScheme.emphasis
            : AppColorScheme.success;
      case AppButtonStyle.clear:
        return Colors.transparent;
      case AppButtonStyle.destructive:
        return AppColorScheme.error;
      case AppButtonStyle.disabled:
        return AppColorScheme.success;
    }
  }
}

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final AppButtonStyle style;
  Icon? prefixIcon;
  Icon? suffixIcon;
  double? fontSize;
  FontWeight fontWeight;
  double width;
  double height;

  AppButton(
      {required this.onPressed,
      required this.title,
      required this.style,
      this.fontSize,
      this.fontWeight = FontWeight.bold,
      this.width = double.infinity,
      this.height = 48,
      this.prefixIcon,
      this.suffixIcon});

  @override
  Widget build(BuildContext context) => Container(
        height: height,
        width: width,
        child: RawMaterialButton(
          elevation: 0,
          hoverElevation: 0,
          focusElevation: 0,
          highlightElevation: 0,
          fillColor: style.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
            side: BorderSide(
              color: style.showBorder ? style.borderColor : Colors.transparent,
              width: 2,
            ),
          ),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (prefixIcon != null) ...[
                  prefixIcon ?? Container(),
                  UIHelper.horizontalSpaceTiny,
                ],
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: style.textColor,
                      fontSize: fontSize ?? AppFontSize.primary,
                      fontWeight: fontWeight,
                    ),
                  ),
                ),
                if (suffixIcon != null) ...[
                  UIHelper.horizontalSpaceExtraTiny,
                  suffixIcon ?? Container(),
                ],
              ],
            ),
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('title', title));
    properties.add(ObjectFlagProperty<Function()>.has('onPressed', onPressed));
    properties.add(EnumProperty<AppButtonStyle>('style', style));
    properties.add(DoubleProperty('fontSize', fontSize));
    properties.add(DiagnosticsProperty<FontWeight>('fontWeight', fontWeight));
    properties.add(DoubleProperty('width', width));
    properties.add(DoubleProperty('height', height));
  }
}
