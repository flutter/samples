import 'package:intl/intl.dart';

class Formatters {
  static final NumberFormat usd = NumberFormat.currency(name: '');
  static final NumberFormat usdWithSign = NumberFormat.currency(name: '\$');
  static final DateFormat date = new DateFormat('MM-dd-yy');
}