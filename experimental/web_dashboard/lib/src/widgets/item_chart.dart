// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart' as intl;
import 'package:web_dashboard/src/api/api.dart';

import 'edit_item.dart';

class ItemChart extends StatefulWidget {
  final Item item;
  final DashboardApi api;

  ItemChart({
    @required this.item,
    @required this.api,
  });

  @override
  _ItemChartState createState() => _ItemChartState();
}

class _ItemChartState extends State<ItemChart> {
  StreamSubscription _subscription;
  List<Entry> _entries = [];

  void initState() {
    super.initState();
    _subscribeToEntries();
  }

  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  void _subscribeToEntries() {
    _subscription =
        widget.api.entries.allEntriesStream(widget.item.id).listen((entries) {
          print('streamed entries $_entries for item ${widget.item.name}');
      setState(() {
        _entries = entries;
      });
    });
    widget.api.entries.list(widget.item.id).then((entries) => setState(() {
      print('fetched entries $_entries for item ${widget.item.name}');
      _entries = entries;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${widget.item.name}"),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  showDialog(
                    context: context,
                    child: Builder(
                      builder: (context) => EditItemDialog(item: widget.item),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: Center(
            child: charts.BarChart(
              _data(),
              animate: false,
            ),
          ),
        ),
      ],
    );
  }

  List<EntryTotal> _entryTotals(List<Entry> entries, int daysAgo) {
    var today = DateTime.now();
    var daysAgoDur = Duration(days: daysAgo);
    var firstDay = today.subtract(daysAgoDur);
    var result = List<EntryTotal>(daysAgo);

    bool isSameDay(DateTime d1, DateTime d2) {
      return d1.year == d2.year && d1.month == d2.month && d1.day == d2.day;
    }

    List<Entry> entriesForDay(DateTime day) {
      return _entries.where((e) => isSameDay(e.time, day)).toList();
    }

    for (var i = 0; i < daysAgo; i++) {
      var day = firstDay.add(Duration(days: i));
      var entries = entriesForDay(day);
      if (entries.isEmpty) {
        result[i] = EntryTotal(day, 0);
        continue;
      }
      for (var entry in entries) {
        if (result[i] == null) {
          result[i] = EntryTotal(entry.time, entry.value);
        } else {
          result[i].value += entry.value;
        }
      }
    }

    return result;
  }

  List<charts.Series<EntryTotal, String>> _data() {
    return [
      charts.Series<EntryTotal, String>(
        id: 'Entries',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (EntryTotal entryTotal, _) {
          if (entryTotal == null) return null;

          var format = intl.DateFormat.Md();
          return format.format(entryTotal.day);
        },
        measureFn: (EntryTotal total, _) {
          if (total == null) return null;

          return total.value;
        },
        data: _entryTotals(_entries, 10),
      )
    ];
  }
}

class EntryTotal {
  // The number of days since the beginning of the data set.
  final DateTime day;
  int value;

  EntryTotal(this.day, this.value);
}
