// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:logging/logging.dart';
import 'package:meta/meta.dart';
import 'package:pedantic/pedantic.dart';

import 'api_error.dart';
import 'photo.dart';
import 'search_photos_response.dart';

final _unsplashBaseUrl = Uri.parse('https://api.unsplash.com/');

/// Unsplash API Client. Requires an
/// [Unsplash API](https://unsplash.com/developers) `accessKey` to make
/// requests to the Unsplash API.
class Unsplash {
  Unsplash({
    @required String accessKey,
    http.BaseClient httpClient,
  })  : assert(accessKey != null, 'accessKey must not be null'),
        _accessKey = accessKey,
        _client = httpClient ?? http.Client();

  final String _accessKey;
  final http.Client _client;
  final _log = Logger('Unsplash');

  Future<SearchPhotosResponse> searchPhotos({
    @required String query,
    num page = 1,
    num perPage = 10,
    List<num> collections = const [],
    SearchPhotosOrientation orientation,
  }) async {
    final searchPhotosUrl = _unsplashBaseUrl
        .replace(path: '/search/photos', queryParameters: <String, String>{
      'query': query,
      if (page != 1) 'page': '$page',
      if (perPage != 10) 'per_page': '$perPage',
      if (collections != null && collections.isNotEmpty)
        'collections': '${collections.join(',')}',
      if (orientation == SearchPhotosOrientation.landscape)
        'orientation': 'landscape',
      if (orientation == SearchPhotosOrientation.portrait)
        'orientation': 'portrait',
      if (orientation == SearchPhotosOrientation.squarish)
        'orientation': 'squarish',
    });
    _log.info('GET $searchPhotosUrl');

    final response = await _client.get(
      searchPhotosUrl,
      headers: {
        'Accept-Version': 'v1',
        'Authorization': 'Client-ID $_accessKey',
      },
    );

    dynamic body;
    try {
      body = json.decode(response.body);
    } catch (e) {
      throw UnsplashException('Invalid JSON received');
    }

    if (body is Map &&
        body['errors'] is List &&
        body['errors'].isNotEmpty as bool) {
      final apiError = ApiError.fromJson(response.body);
      throw UnsplashException(apiError.errors.join(', '));
    }

    return SearchPhotosResponse.fromJson(
      response.body,
    );
  }

  Future<Uint8List> download(Photo photo) async {
    // For detail on how downloading photos from Unsplash, please see
    // https://help.unsplash.com/en/articles/2511258-guideline-triggering-a-download

    _log.info('GET ${photo.urls.full}');
    final futureBytes = http.readBytes(photo.urls.full, headers: {
      'Accept-Version': 'v1',
      'Authorization': 'Client-ID $_accessKey',
    });

    _log.info('GET ${photo.links.downloadLocation}');
    unawaited(http.get(photo.links.downloadLocation, headers: {
      'Accept-Version': 'v1',
      'Authorization': 'Client-ID $_accessKey',
    }));

    return futureBytes;
  }
}

enum SearchPhotosOrientation {
  landscape,
  portrait,
  squarish,
}

class UnsplashException implements Exception {
  UnsplashException([this.message]);

  final String message;

  @override
  String toString() {
    if (message == null) {
      return 'UnsplashException';
    }
    return 'UnsplashException: $message';
  }
}
