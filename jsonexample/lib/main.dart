// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:jsonexample/tab_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Let\'s parse some JSON'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Basics'),
              Tab(text: 'Conv. Simple'),
              Tab(text: 'Conv. Complex'),
              Tab(text: 'Conv. List'),
              Tab(text: 'Ser. Simple'),
              Tab(text: 'Ser. Complex'),
              Tab(text: 'Ser. List'),
              Tab(text: 'Built Simple'),
              Tab(text: 'Built Complex'),
              Tab(text: 'Built List'),
            ],
          ),
        ),
        body: SafeArea(
          bottom: false,
          child: TabBarView(
            children: [
              BasicsPage(),
              ConvertedSimplePage(),
              ConvertedComplexPage(),
              ConvertedListPage(),
              SerializableSimplePage(),
              SerializableComplexPage(),
              SerializableListPage(),
              BuiltSimplePage(),
              BuiltComplexPage(),
              BuiltListPage(),
            ],
          ),
        ),
      ),
    );
  }
}
