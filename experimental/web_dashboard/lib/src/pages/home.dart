// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../api/api.dart';
import 'item_details.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    var api = Provider.of<DashboardApi>(context);

    return Scaffold(
      body: StreamProvider<List<Item>>(
        initialData: [],
        create: (context) => api.items.allItemsStream(),
        child: Consumer<List<Item>>(
          builder: (context, items, child) {
            return ListView.builder(
              itemBuilder: (context, idx) {
                return ListTile(
                  title: Text(items[idx].name),
                  onTap: () {
                    _showDetails(items[idx], context);
                  },
                );
              },
              itemCount: items.length,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          api.items.insert(Item('Coffees Drank'));
        },
      ),
    );
  }

  void _showDetails(Item item, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return ItemDetailsPage(item);
    }));
  }
}
