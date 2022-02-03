// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:logging/logging.dart';
import 'package:menubar/menubar.dart' as menubar;
import 'package:provider/provider.dart';

import 'src/model/photo_search_model.dart';
import 'src/unsplash/unsplash.dart';
import 'src/widgets/photo_search_dialog.dart';
import 'src/widgets/policy_dialog.dart';
import 'src/widgets/unsplash_notice.dart';
import 'src/widgets/unsplash_search_content.dart';
import 'unsplash_access_key.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    // ignore: avoid_print
    print('${rec.loggerName} ${rec.level.name}: ${rec.time}: ${rec.message}');
  });

  if (unsplashAccessKey.isEmpty) {
    Logger('main').severe('Unsplash Access Key is required. '
        'Please add to `lib/unsplash_access_key.dart`.');
    exit(1);
  }

  runApp(
    ChangeNotifierProvider<PhotoSearchModel>(
      create: (context) => PhotoSearchModel(
        Unsplash(accessKey: unsplashAccessKey),
      ),
      child: const UnsplashSearchApp(),
    ),
  );
}

class UnsplashSearchApp extends StatelessWidget {
  const UnsplashSearchApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Search',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const UnsplashHomePage(title: 'Photo Search'),
    );
  }
}

class UnsplashHomePage extends StatelessWidget {
  const UnsplashHomePage({required this.title, Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final photoSearchModel = Provider.of<PhotoSearchModel>(context);
    menubar.setApplicationMenu([
      menubar.Submenu(label: 'Search', children: [
        menubar.MenuItem(
          label: 'Search...',
          onClicked: () {
            showDialog<void>(
              context: context,
              builder: (context) =>
                  PhotoSearchDialog(callback: photoSearchModel.addSearch),
            );
          },
        ),
      ]),
      menubar.Submenu(label: 'About', children: [
        menubar.MenuItem(
          label: 'About...',
          onClicked: () {
            showDialog<void>(
              context: context,
              builder: (context) => const PolicyDialog(),
            );
          },
        ),
      ])
    ]);

    return UnsplashNotice(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: photoSearchModel.entries.isNotEmpty
            ? const UnsplashSearchContent()
            : const Center(
                child: Text('Search for Photos using the Fab button'),
              ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => showDialog<void>(
            context: context,
            builder: (context) =>
                PhotoSearchDialog(callback: photoSearchModel.addSearch),
          ),
          tooltip: 'Search for a photo',
          child: const Icon(Icons.search),
        ),
      ),
    );
  }
}
