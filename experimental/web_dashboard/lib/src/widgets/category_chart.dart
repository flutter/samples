// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

import '../api/api.dart';
import '../utils/chart_utils.dart' as utils;
import 'dialogs.dart';

// The number of days to show in the chart
const _daysBefore = 10;

class CategoryChart extends StatelessWidget {
  final Category category;
  final DashboardApi? api;

  const CategoryChart({
    required this.category,
    required this.api,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category.name),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  showDialog<EditCategoryDialog>(
                    context: context,
                    builder: (context) {
                      return EditCategoryDialog(category: category);
                    },
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          // Load the initial snapshot using a FutureBuilder, and subscribe to
          // additional updates with a StreamBuilder.
          child: FutureBuilder<List<Entry>>(
            future: api!.entries.list(category.id!),
            builder: (context, futureSnapshot) {
              if (!futureSnapshot.hasData) {
                return _buildLoadingIndicator();
              }
              return StreamBuilder<List<Entry>>(
                initialData: futureSnapshot.data,
                stream: api!.entries.subscribe(category.id!),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return _buildLoadingIndicator();
                  }
                  return _BarChart(entries: snapshot.data);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class _BarChart extends StatelessWidget {
  final List<Entry>? entries;

  const _BarChart({this.entries});

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      [_seriesData()],
      animate: false,
    );
  }

  charts.Series<utils.EntryTotal, String> _seriesData() {
    return charts.Series<utils.EntryTotal, String>(
      id: 'Entries',
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
      domainFn: (entryTotal, _) {
        var format = intl.DateFormat.Md();
        return format.format(entryTotal.day);
      },
      measureFn: (total, _) {
        return total.value;
      },
      data: utils.entryTotalsByDay(entries, _daysBefore),
    );
  }
}
