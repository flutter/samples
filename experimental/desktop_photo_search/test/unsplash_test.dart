// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:desktop_photo_search/src/unsplash/photo.dart';
import 'package:desktop_photo_search/src/unsplash/search_photos_response.dart';
import 'package:desktop_photo_search/src/unsplash/unsplash.dart';
import 'package:desktop_photo_search/src/unsplash/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main() {
  test('Photo.fromJson', () {
    const input = '''
{
  "id": "Dwu85P9SOIk",
  "created_at": "2016-05-03T11:00:28-04:00",
  "updated_at": "2016-07-10T11:00:01-05:00",
  "width": 2448,
  "height": 3264,
  "color": "#6E633A",
  "downloads": 1345,
  "likes": 24,
  "liked_by_user": false,
  "description": "A man drinking a coffee.",
  "exif": {
    "make": "Canon",
    "model": "Canon EOS 40D",
    "exposure_time": "0.011111111111111112",
    "aperture": "4.970854",
    "focal_length": "37",
    "iso": 100
  },
  "location": {
    "city": "Montreal",
    "country": "Canada",
    "position": {
      "latitude": 45.4732984,
      "longitude": -73.6384879
    }
  },
  "tags": [
    { "title": "man" },
    { "title": "drinking" },
    { "title": "coffee" }
  ],
  "current_user_collections": [
    {
      "id": 206,
      "title": "Makers: Cat and Ben",
      "published_at": "2016-01-12T18:16:09-05:00",
      "updated_at": "2016-07-10T11:00:01-05:00",
      "cover_photo": null,
      "user": null
    }
  ],
  "urls": {
    "raw": "https://images.unsplash.com/photo-1417325384643-aac51acc9e5d",
    "full": "https://images.unsplash.com/photo-1417325384643-aac51acc9e5d?q=75&fm=jpg",
    "regular": "https://images.unsplash.com/photo-1417325384643-aac51acc9e5d?q=75&fm=jpg&w=1080&fit=max",
    "small": "https://images.unsplash.com/photo-1417325384643-aac51acc9e5d?q=75&fm=jpg&w=400&fit=max",
    "thumb": "https://images.unsplash.com/photo-1417325384643-aac51acc9e5d?q=75&fm=jpg&w=200&fit=max"
  },
  "links": {
    "self": "https://api.unsplash.com/photos/Dwu85P9SOIk",
    "html": "https://unsplash.com/photos/Dwu85P9SOIk",
    "download": "https://unsplash.com/photos/Dwu85P9SOIk/download",
    "download_location": "https://api.unsplash.com/photos/Dwu85P9SOIk/download"
  },
  "user": {
    "id": "QPxL2MGqfrw",
    "updated_at": "2016-07-10T11:00:01-05:00",
    "username": "exampleuser",
    "name": "Joe Example",
    "portfolio_url": "https://example.com/",
    "bio": "Just an everyday Joe",
    "location": "Montreal",
    "total_likes": 5,
    "total_photos": 10,
    "total_collections": 13,
    "links": {
      "self": "https://api.unsplash.com/users/exampleuser",
      "html": "https://unsplash.com/exampleuser",
      "photos": "https://api.unsplash.com/users/exampleuser/photos",
      "likes": "https://api.unsplash.com/users/exampleuser/likes",
      "portfolio": "https://api.unsplash.com/users/exampleuser/portfolio"
    }
  }
}
      ''';

    final photo = Photo.fromJson(input)!;
    expect(photo.id, 'Dwu85P9SOIk');
    expect(photo.createdAt, '2016-05-03T11:00:28-04:00');
    expect(photo.updatedAt, '2016-07-10T11:00:01-05:00');
    expect(photo.width, 2448);
    expect(photo.height, 3264);
    expect(photo.color, '#6E633A');
    expect(photo.downloads, 1345);
    expect(photo.likedByUser, false);
    expect(photo.exif!.make, 'Canon');
    expect(photo.exif!.iso, 100);
    expect(photo.location!.city, 'Montreal');
    expect(photo.location!.country, 'Canada');
    expect(photo.location!.position!.latitude, 45.4732984);
    expect(photo.location!.position!.longitude, -73.6384879);
  });

  test('User.fromJson', () {
    const input = '''
{
  "id": "pXhwzz1JtQU",
  "updated_at": "2016-07-10T11:00:01-05:00",
  "username": "jimmyexample",
  "name": "James Example",
  "first_name": "James",
  "last_name": "Example",
  "instagram_username": "instantgrammer",
  "twitter_username": "jimmy",
  "portfolio_url": null,
  "bio": "The user's bio",
  "location": "Montreal, Qc",
  "total_likes": 20,
  "total_photos": 10,
  "total_collections": 5,
  "followed_by_user": false,
  "followers_count": 300,
  "following_count": 25,
  "downloads": 225974,
  "profile_image": {
    "small": "https://images.unsplash.com/face-springmorning.jpg?q=80&fm=jpg&crop=faces&fit=crop&h=32&w=32",
    "medium": "https://images.unsplash.com/face-springmorning.jpg?q=80&fm=jpg&crop=faces&fit=crop&h=64&w=64",
    "large": "https://images.unsplash.com/face-springmorning.jpg?q=80&fm=jpg&crop=faces&fit=crop&h=128&w=128"
  },
  "badge": {
    "title": "Book contributor",
    "primary": true,
    "slug": "book-contributor",
    "link": "https://book.unsplash.com"
  },
  "links": {
    "self": "https://api.unsplash.com/users/jimmyexample",
    "html": "https://unsplash.com/jimmyexample",
    "photos": "https://api.unsplash.com/users/jimmyexample/photos",
    "likes": "https://api.unsplash.com/users/jimmyexample/likes",
    "portfolio": "https://api.unsplash.com/users/jimmyexample/portfolio"
  }
}
      ''';

    final user = User.fromJson(input)!;
    expect(user.id, 'pXhwzz1JtQU');
  });

  test('SearchPhotosResponse.fromJson', () {
    const input = '''
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

    final response = SearchPhotosResponse.fromJson(input)!;
    expect(response.total, 133);
    expect(response.totalPages, 7);
    expect(response.results[0].id, 'eOLpJytrbsQ');
    expect(response.results[0].user!.id, 'Ul0QVz12Goo');
  });

  group('Unsplash API client', () {
    test('handles success', () async {
      const searchPhotosResponseBody = '''
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

      final httpClient = MockClient((req) async {
        return Response(
          searchPhotosResponseBody,
          200,
          request: req,
          headers: {'content-type': 'application/json'},
        );
      });

      final unsplashClient = Unsplash(
        accessKey: 'not-an-access-key',
        httpClient: httpClient,
      );

      final response = (await unsplashClient.searchPhotos(query: 'red'))!;

      expect(response.total, 133);
      expect(response.totalPages, 7);
      expect(response.results[0].id, 'eOLpJytrbsQ');
      expect(response.results[0].user!.id, 'Ul0QVz12Goo');
    });

    test('handles failure', () async {
      const apiError =
          '{"errors":["OAuth error: The access token is invalid"]}';

      final httpClient = MockClient((req) async {
        return Response(
          apiError,
          401,
          request: req,
          headers: {'content-type': 'application/json'},
        );
      });

      final unsplashClient = Unsplash(
        accessKey: 'not-an-access-key',
        httpClient: httpClient,
      );

      try {
        await unsplashClient.searchPhotos(query: 'red');
        fail('UnsplashException should have been thrown');
      } on UnsplashException catch (e) {
        expect(e.toString(),
            'UnsplashException: OAuth error: The access token is invalid');
      }
    });

    test('handles broken JSON', () async {
      const apiError = '{"tot'; // truncated JSON.

      final httpClient = MockClient((req) async {
        return Response(
          apiError,
          401,
          request: req,
          headers: {'content-type': 'application/json'},
        );
      });

      final unsplashClient = Unsplash(
        accessKey: 'not-an-access-key',
        httpClient: httpClient,
      );

      try {
        await unsplashClient.searchPhotos(query: 'red');
        fail('UnsplashException should have been thrown');
      } on UnsplashException catch (e) {
        expect(e.toString(), 'UnsplashException: Invalid JSON received');
      }
    });
  });

  test('handles utf8 content in JSON', () async {
    const searchPhotosResponseBody = '''
{
    "total": 22395,
    "total_pages": 2240,
    "results": [
        {
            "id": "E4u_Zo9PET8",
            "created_at": "2019-12-29T13:45:28-05:00",
            "updated_at": "2020-11-05T17:12:18-05:00",
            "promoted_at": null,
            "width": 2598,
            "height": 4618,
            "color": "#A53E40",
            "blur_hash": "LlO{8lL#XSbu*Jtla0jZOrb^ozjF",
            "description": null,
            "alt_description": "red apparel",
            "urls": {
                "raw": "https://images.unsplash.com/photo-1577645113639-32537a4a938b?ixlib=rb-1.2.1\u0026ixid=eyJhcHBfaWQiOjM5NTU5fQ",
                "full": "https://images.unsplash.com/photo-1577645113639-32537a4a938b?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb\u0026ixid=eyJhcHBfaWQiOjM5NTU5fQ",
                "regular": "https://images.unsplash.com/photo-1577645113639-32537a4a938b?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=entropy\u0026cs=tinysrgb\u0026w=1080\u0026fit=max\u0026ixid=eyJhcHBfaWQiOjM5NTU5fQ",
                "small": "https://images.unsplash.com/photo-1577645113639-32537a4a938b?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=entropy\u0026cs=tinysrgb\u0026w=400\u0026fit=max\u0026ixid=eyJhcHBfaWQiOjM5NTU5fQ",
                "thumb": "https://images.unsplash.com/photo-1577645113639-32537a4a938b?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=entropy\u0026cs=tinysrgb\u0026w=200\u0026fit=max\u0026ixid=eyJhcHBfaWQiOjM5NTU5fQ"
            },
            "links": {
                "self": "https://api.unsplash.com/photos/E4u_Zo9PET8",
                "html": "https://unsplash.com/photos/E4u_Zo9PET8",
                "download": "https://unsplash.com/photos/E4u_Zo9PET8/download",
                "download_location": "https://api.unsplash.com/photos/E4u_Zo9PET8/download"
            },
            "categories": [],
            "likes": 132,
            "liked_by_user": false,
            "current_user_collections": [],
            "sponsorship": null,
            "user": {
                "id": "_2nQcPrbyuE",
                "updated_at": "2020-11-06T01:37:51-05:00",
                "username": "svalenas",
                "name": "Sergiu Vălenaș",
                "first_name": "Sergiu",
                "last_name": "Vălenaș",
                "twitter_username": null,
                "portfolio_url": null,
                "bio": "Gifted psychologist and enthusiast photographer",
                "location": "Cluj-Napoca, Romania",
                "links": {
                    "self": "https://api.unsplash.com/users/svalenas",
                    "html": "https://unsplash.com/@svalenas",
                    "photos": "https://api.unsplash.com/users/svalenas/photos",
                    "likes": "https://api.unsplash.com/users/svalenas/likes",
                    "portfolio": "https://api.unsplash.com/users/svalenas/portfolio",
                    "following": "https://api.unsplash.com/users/svalenas/following",
                    "followers": "https://api.unsplash.com/users/svalenas/followers"
                },
                "profile_image": {
                    "small": "https://images.unsplash.com/profile-1597067601066-d43176d68553image?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=32\u0026w=32",
                    "medium": "https://images.unsplash.com/profile-1597067601066-d43176d68553image?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=64\u0026w=64",
                    "large": "https://images.unsplash.com/profile-1597067601066-d43176d68553image?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=128\u0026w=128"
                },
                "instagram_username": "svalenas",
                "total_collections": 0,
                "total_likes": 413,
                "total_photos": 129,
                "accepted_tos": true
            },
            "tags": [
                {
                    "type": "landing_page",
                    "title": "red",
                    "source": {
                        "ancestry": {
                            "type": {
                                "slug": "wallpapers",
                                "pretty_slug": "HD Wallpapers"
                            },
                            "category": {
                                "slug": "colors",
                                "pretty_slug": "Color"
                            },
                            "subcategory": {
                                "slug": "red",
                                "pretty_slug": "Red"
                            }
                        },
                        "title": "HD Red Wallpapers",
                        "subtitle": "Download Free Red Wallpapers",
                        "description": "Choose from a curated selection of red wallpapers for your mobile and desktop screens. Always free on Unsplash.",
                        "meta_title": "Red Wallpapers: Free HD Download [500+ HQ] | Unsplash",
                        "meta_description": "Choose from hundreds of free red wallpapers. Download HD wallpapers for free on Unsplash.",
                        "cover_photo": {
                            "id": "HyBXy5PHQR8",
                            "created_at": "2018-02-17T13:44:58-05:00",
                            "updated_at": "2020-10-21T01:07:42-04:00",
                            "promoted_at": null,
                            "width": 3024,
                            "height": 4032,
                            "color": "#C51918",
                            "blur_hash": "L9Bmx_o1o1Jl|cwxWpWpN]\$5N]sU",
                            "description": null,
                            "alt_description": "red textile",
                            "urls": {
                                "raw": "https://images.unsplash.com/photo-1518893063132-36e46dbe2428?ixlib=rb-1.2.1",
                                "full": "https://images.unsplash.com/photo-1518893063132-36e46dbe2428?ixlib=rb-1.2.1\u0026q=85\u0026fm=jpg\u0026crop=entropy\u0026cs=srgb",
                                "regular": "https://images.unsplash.com/photo-1518893063132-36e46dbe2428?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=entropy\u0026cs=tinysrgb\u0026w=1080\u0026fit=max",
                                "small": "https://images.unsplash.com/photo-1518893063132-36e46dbe2428?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=entropy\u0026cs=tinysrgb\u0026w=400\u0026fit=max",
                                "thumb": "https://images.unsplash.com/photo-1518893063132-36e46dbe2428?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=entropy\u0026cs=tinysrgb\u0026w=200\u0026fit=max"
                            },
                            "links": {
                                "self": "https://api.unsplash.com/photos/HyBXy5PHQR8",
                                "html": "https://unsplash.com/photos/HyBXy5PHQR8",
                                "download": "https://unsplash.com/photos/HyBXy5PHQR8/download",
                                "download_location": "https://api.unsplash.com/photos/HyBXy5PHQR8/download"
                            },
                            "categories": [],
                            "likes": 1243,
                            "liked_by_user": false,
                            "current_user_collections": [],
                            "sponsorship": null,
                            "user": {
                                "id": "6nkkrwW9M-s",
                                "updated_at": "2020-10-22T20:44:54-04:00",
                                "username": "montylov",
                                "name": "MontyLov",
                                "first_name": "MontyLov",
                                "last_name": null,
                                "twitter_username": "MontyLov",
                                "portfolio_url": "http://montylov.com",
                                "bio": "Stay humble and innovate.",
                                "location": null,
                                "links": {
                                    "self": "https://api.unsplash.com/users/montylov",
                                    "html": "https://unsplash.com/@montylov",
                                    "photos": "https://api.unsplash.com/users/montylov/photos",
                                    "likes": "https://api.unsplash.com/users/montylov/likes",
                                    "portfolio": "https://api.unsplash.com/users/montylov/portfolio",
                                    "following": "https://api.unsplash.com/users/montylov/following",
                                    "followers": "https://api.unsplash.com/users/montylov/followers"
                                },
                                "profile_image": {
                                    "small": "https://images.unsplash.com/profile-1588478301600-b5e5203a574aimage?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=32\u0026w=32",
                                    "medium": "https://images.unsplash.com/profile-1588478301600-b5e5203a574aimage?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=64\u0026w=64",
                                    "large": "https://images.unsplash.com/profile-1588478301600-b5e5203a574aimage?ixlib=rb-1.2.1\u0026q=80\u0026fm=jpg\u0026crop=faces\u0026cs=tinysrgb\u0026fit=crop\u0026h=128\u0026w=128"
                                },
                                "instagram_username": "montylov",
                                "total_collections": 1,
                                "total_likes": 0,
                                "total_photos": 79,
                                "accepted_tos": false
                            }
                        }
                    }
                },
                {
                    "type": "search",
                    "title": "rug"
                },
                {
                    "type": "search",
                    "title": "plant"
                }
            ]
        }
    ]
}
      ''';

    final httpClient = MockClient((req) async {
      return Response(
        searchPhotosResponseBody,
        200,
        request: req,
        headers: {'content-type': 'application/json; charset=utf-8'},
      );
    });

    final unsplashClient = Unsplash(
      accessKey: 'not-an-access-key',
      httpClient: httpClient,
    );

    final response = (await unsplashClient.searchPhotos(query: 'red'))!;

    expect(response.total, 22395);
    expect(response.totalPages, 2240);
    expect(response.results[0].id, 'E4u_Zo9PET8');
    expect(response.results[0].user!.id, '_2nQcPrbyuE');
    expect(response.results[0].user!.name, 'Sergiu Vălenaș');
  });
}
