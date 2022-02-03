// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:typed_data';

import 'package:desktop_photo_search/src/model/photo_search_model.dart';
import 'package:desktop_photo_search/src/unsplash/photo.dart';
import 'package:desktop_photo_search/src/unsplash/search_photos_response.dart';
import 'package:desktop_photo_search/src/unsplash/unsplash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';

class FakeUnsplash implements Unsplash {
  static const searchPhotosResponse = '''
{
  "total": 133,
  "total_pages": 7,
  "results": [
    {
      "id": "eOLpJytrbsQ",
      "created_at": "2014-11-18T14:35:36-05:00",
      "width": 4000,
      "height": 3000,
      "color": "#A7A2A1",
      "likes": 286,
      "liked_by_user": false,
      "description": "A man drinking a coffee.",
      "user": {
        "id": "Ul0QVz12Goo",
        "username": "ugmonk",
        "name": "Jeff Sheldon",
        "first_name": "Jeff",
        "last_name": "Sheldon",
        "instagram_username": "instantgrammer",
        "twitter_username": "ugmonk",
        "portfolio_url": "http://ugmonk.com/",
        "profile_image": {
          "small": "https://images.unsplash.com/profile-1441298803695-accd94000cac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=32&w=32&s=7cfe3b93750cb0c93e2f7caec08b5a41",
          "medium": "https://images.unsplash.com/profile-1441298803695-accd94000cac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=64&w=64&s=5a9dc749c43ce5bd60870b129a40902f",
          "large": "https://images.unsplash.com/profile-1441298803695-accd94000cac?ixlib=rb-0.3.5&q=80&fm=jpg&crop=faces&cs=tinysrgb&fit=crop&h=128&w=128&s=32085a077889586df88bfbe406692202"
        },
        "links": {
          "self": "https://api.unsplash.com/users/ugmonk",
          "html": "http://unsplash.com/@ugmonk",
          "photos": "https://api.unsplash.com/users/ugmonk/photos",
          "likes": "https://api.unsplash.com/users/ugmonk/likes"
        }
      },
      "current_user_collections": [],
      "urls": {
        "raw": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f",
        "full": "https://hd.unsplash.com/photo-1416339306562-f3d12fefd36f",
        "regular": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&s=92f3e02f63678acc8416d044e189f515",
        "small": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=400&fit=max&s=263af33585f9d32af39d165b000845eb",
        "thumb": "https://images.unsplash.com/photo-1416339306562-f3d12fefd36f?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=200&fit=max&s=8aae34cf35df31a592f0bef16e6342ef"
      },
      "links": {
        "self": "https://api.unsplash.com/photos/eOLpJytrbsQ",
        "html": "http://unsplash.com/photos/eOLpJytrbsQ",
        "download": "http://unsplash.com/photos/eOLpJytrbsQ/download"
      }
    }
  ]
}
      ''';

  @override
  Future<SearchPhotosResponse?> searchPhotos(
      {String? query,
      num page = 1,
      num perPage = 10,
      List<num> collections = const [],
      SearchPhotosOrientation? orientation}) async {
    return SearchPhotosResponse.fromJson(searchPhotosResponse);
  }

  @override
  Future<Uint8List> download(Photo photo) {
    throw UnimplementedError();
  }
}

const fabKey = Key('fab');

class PhotoSearchModelTester extends StatelessWidget {
  const PhotoSearchModelTester({required this.query, Key? key})
      : super(key: key);
  final String query;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextButton(
        key: fabKey,
        onPressed: () async {
          await Provider.of<PhotoSearchModel>(
            context,
            listen: false,
          ).addSearch(query);
        },
        child: const Text('Search for a Photo'),
      ),
    );
  }
}

void main() {
  group('search_list', () {
    testWidgets('starts empty', (tester) async {
      final unsplashSearches = PhotoSearchModel(FakeUnsplash());
      final testWidget = ChangeNotifierProvider<PhotoSearchModel>(
        create: (context) => unsplashSearches,
        child: const PhotoSearchModelTester(query: 'clouds'),
      );
      await tester.pumpWidget(testWidget);
      expect(unsplashSearches.entries.length, 0);
    });

    testWidgets('addSearch adds searches', (tester) async {
      final unsplashSearches = PhotoSearchModel(FakeUnsplash());
      final testWidget = ChangeNotifierProvider<PhotoSearchModel>(
        create: (context) => unsplashSearches,
        child: const PhotoSearchModelTester(query: 'clouds'),
      );
      await tester.pumpWidget(testWidget);
      await tester.tap(find.byKey(fabKey));
      await tester.tap(find.byKey(fabKey));
      await tester.pumpAndSettle();

      expect(unsplashSearches.entries.length, 2);
    });
  });
}
