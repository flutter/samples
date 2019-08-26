import 'package:intl/intl.dart';

class Formatters {
  static final NumberFormat usd = NumberFormat.currency(name: '');
  static final NumberFormat usdWithSign = NumberFormat.currency(name: '\$');
  static final DateFormat date = DateFormat('MM-dd-yy');
}
