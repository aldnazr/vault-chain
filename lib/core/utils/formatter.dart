import 'package:intl/intl.dart';

class Formatter {
  static String formatCurrency(num currency) => NumberFormat.currency(
    locale: 'id_ID',
    symbol: 'Rp ',
    decimalDigits: 0,
  ).format(currency);

  static String formatCurrencyWithoutSymbol(num currency) =>
      NumberFormat.currency(
        locale: 'id_ID',
        symbol: '',
        decimalDigits: 0,
      ).format(currency);

  static String formatPercent(num percentage) {
    final formatter = NumberFormat.decimalPattern('id_ID');
    final formatted = formatter.format(
      double.parse(percentage.toStringAsFixed(2)),
    );
    return '${formatted.replaceFirst('', percentage <= 0 ? '' : '+')}%';
  }
}
