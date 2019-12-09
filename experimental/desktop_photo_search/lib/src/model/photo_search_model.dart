// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../unsplash/photo.dart';
import '../unsplash/unsplash.dart';
import '../widgets/data_tree.dart' show Entry;
import 'search.dart';

class _PhotoEntry extends Entry {
  _PhotoEntry(this._photo, this._model) : super('Photo by ${_photo.user.name}');

  final Photo _photo;
  final PhotoSearchModel _model;

  @override
  bool get isSelected => false;

  @override
  set isSelected(bool selected) {
    _model._setSelectedPhoto(_photo);
  }
}

class _SearchEntry extends Entry {
  _SearchEntry(String query, List<Photo> photos, PhotoSearchModel model)
      : super(
          query,
          List<Entry>.unmodifiable(
            photos.map<Entry>((photo) => _PhotoEntry(photo, model)),
          ),
        );
}

class PhotoSearchModel extends ChangeNotifier {
  PhotoSearchModel(this._client);
  final Unsplash _client;

  List<Entry> get entries => List.unmodifiable(_entries);
  final List<Entry> _entries = <Entry>[];

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

    _entries.add(_SearchEntry(query, search.results.toList(), this));
    notifyListeners();
  }

  Future<Uint8List> download({@required Photo photo}) =>
      _client.download(photo);
}
