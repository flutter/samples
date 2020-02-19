// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import '../api/api.dart';

class HomePage extends StatefulWidget {
  final DashboardApi api;

  HomePage({
    this.api,
  });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Item> items = [];
  DashboardApi get api => widget.api;

  void initState() {
    super.initState();
    _loadItems();
  }

  Future _loadItems() async {
    var items = await api.items.list();

    setState(() {
      this.items = items;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('${items.length} items'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          api.items.insert(Item('Coffees Drank')).then((_) => _loadItems());
        },
      ),
    );
  }
}
