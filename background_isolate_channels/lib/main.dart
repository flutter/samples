// Copyright 2022 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io' show Directory;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart' as uuid;

import 'simple_database.dart';

///////////////////////////////////////////////////////////////////////////////
// This is the UI which will present the contents of the [SimpleDatabase]. To
// see where Background Isolate Channels are used see simple_database.dart.
///////////////////////////////////////////////////////////////////////////////

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Background Isolate Channels',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Background Isolate Channels'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  /// The database that is running on a background [Isolate]. This is nullable
  /// because acquiring a [SimpleDatabase] is an asynchronous operation. This
  /// value is `null` until the database is initialized.
  SimpleDatabase? _database;

  /// Local cache of the query results returned by the [SimpleDatabase] for the
  /// UI to render from. It is nullable since querying the results is
  /// asynchronous. The value is `null` before any result has been received.
  List<String>? _entries;

  /// What is searched for in the [SimpleDatabase].
  String _query = '';

  @override
  void initState() {
    // Write the value to [SharedPreferences] which will get read on the
    // [SimpleDatabase]'s isolate. For this example the value is always true
    // just for demonstration purposes.
    final Future<void> sharedPreferencesSet = SharedPreferences.getInstance()
        .then(
            (sharedPreferences) => sharedPreferences.setBool('isDebug', true));
    final Future<Directory> tempDirFuture =
        path_provider.getTemporaryDirectory();

    // Wait until the [SharedPreferences] value is set and the temporary
    // directory is received before opening the database. If
    // [sharedPreferencesSet] does not happen before opening the
    // [SimpleDatabase] there has to be a way to refresh
    // [_SimpleDatabaseServer]'s [SharedPreferences] cached values.
    Future.wait([sharedPreferencesSet, tempDirFuture]).then((values) {
      final Directory? tempDir = values[1] as Directory?;
      final String dbPath = path.join(tempDir!.path, 'database.db');
      SimpleDatabase.open(dbPath).then((database) {
        setState(() {
          _database = database;
        });
        _refresh();
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    _database?.stop();
    super.dispose();
  }

  /// Performs a find on [SimpleDatabase] with [query] and updates the listed
  /// contents.
  void _refresh({String? query}) {
    if (query != null) {
      _query = query;
    }
    _database!.find(_query).toList().then((entries) {
      setState(() {
        _entries = entries;
      });
    });
  }

  /// Adds a UUID and a timestamp to the [SimpleDatabase].
  void _addDate() {
    final DateTime now = DateTime.now();
    final DateFormat formatter =
        DateFormat('EEEE MMMM d, HH:mm:ss\n${const uuid.Uuid().v4()}');
    final String formatted = formatter.format(now);
    _database!.addEntry(formatted).then((_) => _refresh());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SearchBar(
              hintText: 'Search',
              onChanged:
                  _database == null ? null : (query) => _refresh(query: query),
              trailing: const [Icon(Icons.search), SizedBox(width: 8)],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(title: Text(_entries![index]));
        },
        itemCount: _entries?.length ?? 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _database == null ? null : _addDate,
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
