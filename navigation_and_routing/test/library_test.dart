// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:bookstore/src/data/library.dart';
import 'package:test/test.dart';

void main() {
  group('Library', () {
    test('addBook', () {
      final library = Library();
      library.addBook(
          title: 'Left Hand of Darkness',
          authorName: 'Ursula K. Le Guin',
          isPopular: true,
          isNew: true);
      library.addBook(
          title: 'Too Like the Lightning',
          authorName: 'Ada Palmer',
          isPopular: false,
          isNew: true);
      library.addBook(
          title: 'Kindred',
          authorName: 'Octavia E. Butler',
          isPopular: true,
          isNew: false);
      library.addBook(
          title: 'The Lathe of Heaven',
          authorName: 'Ursula K. Le Guin',
          isPopular: false,
          isNew: false);
      expect(library.allAuthors.length, 3);
      expect(library.allAuthors.first.books.length, 2);
      expect(library.allBooks.length, 4);
      expect(library.allBooks.first.author.name, startsWith('Ursula'));
    });
  });
}
