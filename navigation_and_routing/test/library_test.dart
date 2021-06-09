// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:bookstore/src/data/library.dart';
import 'package:test/test.dart';

void main() {
  group('Library', () {
    test('addBook', () {
      final library = Library();
      library.addBook('Left Hand of Darkness', 'Ursula K. Le Guin', true, true);
      library.addBook('Too Like the Lightning', 'Ada Palmer', false, true);
      library.addBook('Kindred', 'Octavia E. Butler', true, false);
      library.addBook('The Lathe of Heaven', 'Ursula K. Le Guin', false, false);
      expect(library.allAuthors.length, 3);
      expect(library.allAuthors.first.books.length, 2);
      expect(library.allBooks.length, 4);
      expect(library.allBooks.first.author.name, startsWith('Ursula'));
    });
  });
}
