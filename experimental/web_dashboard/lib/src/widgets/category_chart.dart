// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:intl/intl.dart' as intl;
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/utils/chart_utils.dart' as utils;

import 'dialogs.dart';

class CategoryChart extends StatefulWidget {
  final Category category;
  final DashboardApi api;

  CategoryChart({
    @required this.category,
    @required this.api,
  });

  @override
  _CategoryChartState createState() => _CategoryChartState();
}

class _CategoryChartState extends State<CategoryChart> {
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
        widget.api.entries.stream(widget.category.id).listen((entries) {
      setState(() {
        _entries = entries;
      });
    });
    widget.api.entries.list(widget.category.id).then((entries) => setState(() {
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
              Text("${widget.category.name}"),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  showDialog(
                    context: context,
                    child: Builder(
                      builder: (context) =>
                          EditCategoryDialog(category: widget.category),
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
              [_seriesData()],
              animate: false,
            ),
          ),
        ),
      ],
    );
  }

  charts.Series<utils.EntryTotal, String> _seriesData() {
    return charts.Series<utils.EntryTotal, String>(
      id: 'Entries',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (utils.EntryTotal entryTotal, _) {
        if (entryTotal == null) return null;

        var format = intl.DateFormat.Md();
        return format.format(entryTotal.day);
      },
      measureFn: (utils.EntryTotal total, _) {
        if (total == null) return null;

        return total.value;
      },
      data: utils.entryTotalsByDay(_entries, 10),
    );
  }
}
