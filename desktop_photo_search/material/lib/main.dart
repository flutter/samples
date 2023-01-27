// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:menubar/menubar.dart' as menubar;
import 'package:provider/provider.dart';
import 'package:window_size/window_size.dart';

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

  setupWindow();

  runApp(
    ChangeNotifierProvider<PhotoSearchModel>(
      create: (context) => PhotoSearchModel(
        Unsplash(accessKey: unsplashAccessKey),
      ),
      child: const UnsplashSearchApp(),
    ),
  );
}

const double windowWidth = 1024;
const double windowHeight = 800;

void setupWindow() {
  if (!kIsWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    WidgetsFlutterBinding.ensureInitialized();
    setWindowMinSize(const Size(windowWidth, windowHeight));
  }
}

class UnsplashSearchApp extends StatelessWidget {
  const UnsplashSearchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Search',
      theme: ThemeData(
        colorSchemeSeed: Colors.orange,
        useMaterial3: true,
      ),
      home: const UnsplashHomePage(title: 'Photo Search'),
    );
  }
}

class UnsplashHomePage extends StatelessWidget {
  const UnsplashHomePage({required this.title, super.key});
  final String title;

  @override
  Widget build(BuildContext context) {
    final photoSearchModel = Provider.of<PhotoSearchModel>(context);
    menubar.setApplicationMenu([
      menubar.NativeSubmenu(label: 'Search', children: [
        menubar.NativeMenuItem(
          label: 'Search…',
          onSelected: () {
            showDialog<void>(
              context: context,
              builder: (context) =>
                  PhotoSearchDialog(callback: photoSearchModel.addSearch),
            );
          },
        ),
        if (!Platform.isMacOS)
          menubar.NativeMenuItem(
            label: 'Quit',
            onSelected: () {
              SystemNavigator.pop();
            },
          ),
      ]),
      menubar.NativeSubmenu(label: 'About', children: [
        menubar.NativeMenuItem(
          label: 'About',
          onSelected: () {
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
