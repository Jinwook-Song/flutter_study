import 'package:wabiz/core/core.dart';

extension NumberFormatting on num {
  /// Formats the number using a comma-separated thousands separator.
  /// - ex) 123456789 -> 123,456,789
  String formatNumber() {
    final formatter = NumberFormat('#,###');
    return formatter.format(this);
  }
}
