// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:provider/provider.dart';
import 'package:testing_app/models/favorites.dart';
import 'package:testing_app/screens/favorites.dart';

void main() {
  // Create a reference to the state
  // so that we can perform operations on it manually.
  Favorites favoritesList;

  // This line enables the extension.
  enableFlutterDriverExtension(
      // This handler gets data from the test file
      // and then we use it to perform operations on the state object.
      handler: (command) {
    if (command == 'ADD') {
      favoritesList.add(30);
    } else if (command == 'REMOVE') {
      favoritesList.remove(30);
    }
    return Future.delayed(Duration(seconds: 1), () => 'DONE');
  });

  // Call the `main()` function of the app, or call `runApp` with
  // any widget you are interested in testing.
  runApp(
    ChangeNotifierProvider(
      create: (context) {
        favoritesList = Favorites();
        return favoritesList;
      },
      child: MaterialApp(
        home: FavoritesPage(),
      ),
    ),
  );
}
