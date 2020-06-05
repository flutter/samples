// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

import '../unsplash/photo.dart';
import '../unsplash/unsplash.dart';
import 'search.dart';

TreeNode _searchEntry(
    String query, List<Photo> photos, PhotoSearchModel model) {
  return TreeNode(
    content: Expanded(
      child: Text(query),
    ),
    children: photos
        .map<TreeNode>(
          (photo) => TreeNode(
            content: Expanded(
              child: InkWell(
                onTap: () {
                  model._setSelectedPhoto(photo);
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

class PhotoSearchModel extends ChangeNotifier {
  PhotoSearchModel(this._client);
  final Unsplash _client;

  List<TreeNode> get entries => List.unmodifiable(_entries);
  final List<TreeNode> _entries = <TreeNode>[];

  Photo get selectedPhoto => _selectedPhoto;
  void _setSelectedPhoto(Photo photo) {
    _selectedPhoto = photo;
    notifyListeners();
  }

  Photo _selectedPhoto;

  Future<void> addSearch(String query) async {
    final result = await _client.searchPhotos(
      query: query,
      orientation: SearchPhotosOrientation.portrait,
    );
    final search = Search((s) {
      s
        ..query = query
        ..results.addAll(result.results);
    });

    _entries.add(_searchEntry(query, search.results.toList(), this));
    notifyListeners();
  }

  Future<Uint8List> download({@required Photo photo}) =>
      _client.download(photo);
}
