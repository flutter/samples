// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../unsplash/photo.dart';
import '../unsplash/unsplash.dart';
import 'search.dart';

class SearchEntry {
  const SearchEntry(this.query, this.photos, this.model);
  final String query;
  final List<Photo> photos;
  final PhotoSearchModel model;
}

class PhotoSearchModel extends ChangeNotifier {
  PhotoSearchModel(this._client);
  final Unsplash _client;

  List<SearchEntry> get entries => List.unmodifiable(_entries);
  final List<SearchEntry> _entries = [];

  Photo get selectedPhoto => _selectedPhoto;
  set selectedPhoto(Photo photo) {
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

    _entries.add(SearchEntry(query, search.results.toList(), this));
    notifyListeners();
  }

  Future<Uint8List> download({@required Photo photo}) =>
      _client.download(photo);
}
