// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/app.dart';
import 'package:web_dashboard/src/widgets/item_chart.dart';

class DashboardPage extends StatelessWidget {
  Widget build(BuildContext context) {
    var appState = Provider.of<AppState>(context);
    return StreamBuilder<List<Item>>(
      initialData: appState.api.items.latest,
      stream: appState.api.items.allItemsStream(),
      builder: (context, snapshot) {
        if (snapshot.data == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        return Dashboard(snapshot.data);
      },
    );
  }
}

class Dashboard extends StatelessWidget {
  final List<Item> items;

  Dashboard(this.items);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 2,
          maxCrossAxisExtent: 500,
        ),
        children: items.map((item) {
          return Card(
            child: ItemChart(
              item: item,
            ),
          );
        }).toList(),
      ),
    );
  }
}
