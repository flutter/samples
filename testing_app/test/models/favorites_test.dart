// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:test/test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group('Testing App Provider Tests', () {
    // Create an object of the provider.
    var favorites = Favorites();

    test('A new item should be added', () {
      var number = 35;

      // Add the number to the list.
      favorites.add(number);

      // Verify if the number was inserted.
      expect(favorites.items.contains(number), true);
    });

    test('An item should be removed', () {
      var number = 45;

      // Add the number to the list.
      favorites.add(number);

      // Verify if the number was inserted.
      expect(favorites.items.contains(number), true);

      // Remove the number from the list.
      favorites.remove(number);

      // Verify if the number was removed successfully.
      expect(favorites.items.contains(number), false);
    });
  });
}
