import 'package:intl/intl.dart';
import 'package:my_app/generated/l10n.dart';

class CurrencyHelper {
  CurrencyHelper._();

  static String doubleToCurrency(double value, {int decimalDigits = 2}) =>
      NumberFormat.currency(
        decimalDigits: decimalDigits,
        symbol: S.current.currencySymbol,
      ).format(value);

  static double currencyToDouble(String value, {int decimalDigits = 2}) {
    if (value.isEmpty) return 0;
    return NumberFormat.currency(
      decimalDigits: decimalDigits,
      symbol: S.current.currencySymbol,
    ).parse(value) as double;
  }
}
