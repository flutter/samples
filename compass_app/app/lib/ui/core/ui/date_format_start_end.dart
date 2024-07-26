import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final _dateFormatDay = DateFormat('d');
final _dateFormatDayMonth = DateFormat('d MMM');

String dateFormatStartEnd(DateTimeRange dateTimeRange) {
  final start = dateTimeRange.start;
  final end = dateTimeRange.end;

  final dayMonthEnd = _dateFormatDayMonth.format(end);

  if (start.month == end.month) {
    final dayStart = _dateFormatDay.format(start);
    return '$dayStart - $dayMonthEnd';
  }

  final dayMonthStart = _dateFormatDayMonth.format(start);
  return '$dayMonthStart - $dayMonthEnd';
}
