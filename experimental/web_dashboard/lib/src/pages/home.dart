// Copyright 2020, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../api/api.dart';
import 'item_details.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Stream<List<Item>> _stream;

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<DashboardApi>(context);
    if (_stream == null) {
      _stream = api.items.subscribe();
    }

    return Scaffold(
      body: StreamBuilder<List<Item>>(
        initialData: [],
        stream: _stream,
        builder: (context, snapshot) {
          return ListView.builder(
            itemBuilder: (context, idx) {
              return ListTile(
                title: Text(snapshot.data[idx].name),
                onTap: () {
                  _showDetails(snapshot.data[idx], context);
                },
              );
            },
            itemCount: snapshot.data.length,
          );
        },
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
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) {
        return ItemDetailsPage(item);
      }
    ));
  }
}
