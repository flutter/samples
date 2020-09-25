// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:file_chooser/file_chooser.dart' as file_chooser;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
import 'package:logging/logging.dart';
import 'package:menubar/menubar.dart' as menubar;
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';

import 'src/model/photo_search_model.dart';
import 'src/unsplash/unsplash.dart';
import 'src/widgets/photo_details.dart';
import 'src/widgets/photo_search_dialog.dart';
import 'src/widgets/split.dart';
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
      child: UnsplashSearchApp(),
    ),
  );
}

class UnsplashSearchApp extends StatelessWidget {
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
  const UnsplashHomePage({@required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    final photoSearchModel = Provider.of<PhotoSearchModel>(context);
    menubar.setApplicationMenu([
      menubar.Submenu(label: 'Search', children: [
        menubar.MenuItem(
          label: 'Search ...',
          onClicked: () {
            showDialog<void>(
              context: context,
              builder: (context) =>
                  PhotoSearchDialog(photoSearchModel.addSearch),
            );
          },
        ),
      ])
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: photoSearchModel.entries.isNotEmpty
          ? Split(
              axis: Axis.horizontal,
              initialFirstFraction: 0.4,
              firstChild: Scrollbar(
                child: SingleChildScrollView(
                  child: TreeView(
                    nodes: photoSearchModel.entries
                        .map(_buildSearchEntry)
                        .toList(),
                    indent: 0,
                  ),
                ),
              ),
              secondChild: Center(
                child: photoSearchModel.selectedPhoto != null
                    ? PhotoDetails(
                        photo: photoSearchModel.selectedPhoto,
                        onPhotoSave: (photo) async {
                          final result = await file_chooser.showSavePanel(
                            suggestedFileName: '${photo.id}.jpg',
                            allowedFileTypes: const [
                              file_chooser.FileTypeFilterGroup(
                                label: 'JPGs',
                                fileExtensions: ['jpg'],
                              )
                            ],
                          );
                          if (!result.canceled) {
                            final bytes =
                                await photoSearchModel.download(photo: photo);
                            await File(result.paths[0]).writeAsBytes(bytes);
                          }
                        },
                      )
                    : Container(),
              ),
            )
          : const Center(
              child: Text('Search for Photos using the Fab button'),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog<void>(
          context: context,
          builder: (context) => PhotoSearchDialog(photoSearchModel.addSearch),
        ),
        tooltip: 'Search for a photo',
        child: Icon(Icons.search),
      ),
    );
  }

  TreeNode _buildSearchEntry(SearchEntry searchEntry) {
    return TreeNode(
      content: Expanded(
        child: Text(searchEntry.query),
      ),
      children: searchEntry.photos
          .map<TreeNode>(
            (photo) => TreeNode(
              content: Expanded(
                child: InkWell(
                  onTap: () {
                    searchEntry.model.selectedPhoto = photo;
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Photo by ${photo.user.name}',
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
