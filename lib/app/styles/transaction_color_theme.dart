import 'package:flutter/material.dart';
import 'app_color_scheme.dart';

enum TransactionColorTheme { success, error }

extension TransactionColorExtension on TransactionColorTheme {
  Color get backgroundColor {
    switch (this) {
      case TransactionColorTheme.success:
        return AppColorScheme.successLight;
      case TransactionColorTheme.error:
        return AppColorScheme.errorLight;
    }
  }

  Color get textColor {
    switch (this) {
      case TransactionColorTheme.success:
        return AppColorScheme.success;
      case TransactionColorTheme.error:
        return AppColorScheme.error;
    }
  }

  IconData get icon {
    switch (this) {
      case TransactionColorTheme.success:
        return Icons.arrow_drop_up_rounded;
      case TransactionColorTheme.error:
        return Icons.arrow_drop_down_rounded;
    }
  }
}
