// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:collection/collection.dart';

import 'author.dart';
import 'book.dart';

class Library {
  final List<Book> allBooks = [];
  final List<Author> allAuthors = [];

  void addBook({
    required String title,
    required String authorName,
    required bool isPopular,
    required bool isNew,
  }) {
    var author =
        allAuthors.firstWhereOrNull((author) => author.name == authorName);
    var book = Book(allBooks.length, title, isPopular, isNew);

    if (author == null) {
      author = Author(allAuthors.length, authorName, [book]);
      allAuthors.add(author);
    } else {
      author.books.add(book);
    }

    book.author = author;
    allBooks.add(book);
  }

  List<Book> get popularBooks {
    return [
      ...allBooks.where((book) => book.isPopular),
    ];
  }

  List<Book> get newBooks {
    return [
      ...allBooks.where((book) => book.isNew),
    ];
  }
}
