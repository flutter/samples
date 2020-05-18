import '../api/api.dart';

/// The total value of one or more [Entry]s on a given day.
class EntryTotal {
  final DateTime day;
  int value;

  EntryTotal(this.day, this.value);
}

/// Returns a list of [EntryTotal] objects. Each [EntryTotal] is the sum of
/// the values of all the entries on a given day.
List<EntryTotal> entryTotalsByDay(List<Entry> entries, int daysAgo,
    {DateTime today}) {
  today ??= DateTime.now();
  return _entryTotalsByDay(entries, daysAgo, today).toList();
}

Iterable<EntryTotal> _entryTotalsByDay(
    List<Entry> entries, int daysAgo, DateTime today) sync* {
  var start = today.subtract(Duration(days: daysAgo));
  var entriesByDay = _entriesInRange(start, today, entries);

  for (var i = 0; i < entriesByDay.length; i++) {
    var list = entriesByDay[i];
    var entryTotal = EntryTotal(start.add(Duration(days: i)), 0);

    for (var entry in list) {
      entryTotal.value += entry.value;
    }

    yield entryTotal;
  }
}

/// Groups entries by day between [start] and [end]. The result is a list of
/// lists. The outer list represents the number of days since [start], and the
/// inner list is the group of entries on that day.
List<List<Entry>> _entriesInRange(
        DateTime start, DateTime end, List<Entry> entries) =>
    _entriesInRangeImpl(start, end, entries).toList();

Iterable<List<Entry>> _entriesInRangeImpl(
    DateTime start, DateTime end, List<Entry> entries) sync* {
  start = _date(start);
  end = _date(end);
  var d = start;

  while (d.compareTo(end) <= 0) {
    var es = <Entry>[];
    for (var entry in entries) {
      if (_isSameDay(d, _date(entry.time))) {
        es.add(entry);
      }
    }

    yield es;
    d = d.add(Duration(days: 1));
  }
}

/// The UTC date of a datetime, excluding the minutes, seconds, etc.
DateTime _date(DateTime time) {
  return DateTime.utc(time.year, time.month, time.day);
}

/// Checks that the two [DateTime]s share the same date.
bool _isSameDay(DateTime d1, DateTime d2) {
  return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
}
