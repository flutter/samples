// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'author.dart';
import 'book.dart';

final libraryInstance = Library()
  ..addBook(
      title: 'Left Hand of Darkness',
      authorName: 'Ursula K. Le Guin',
      isPopular: true,
      isNew: true)
  ..addBook(
      title: 'Too Like the Lightning',
      authorName: 'Ada Palmer',
      isPopular: false,
      isNew: true)
  ..addBook(
      title: 'Kindred',
      authorName: 'Octavia E. Butler',
      isPopular: true,
      isNew: false)
  ..addBook(
      title: 'The Lathe of Heaven',
      authorName: 'Ursula K. Le Guin',
      isPopular: false,
      isNew: false);

class Library {
  final List<Book> allBooks = [];
  final List<Author> allAuthors = [];

  void addBook({
    required String title,
    required String authorName,
    required bool isPopular,
    required bool isNew,
  }) {
    var author = allAuthors.firstWhere(
      (author) => author.name == authorName,
      orElse: () {
        final value = Author(allAuthors.length, authorName);
        allAuthors.add(value);
        return value;
      },
    );
    var book = Book(allBooks.length, title, isPopular, isNew, author);

    author.books.add(book);
    allBooks.add(book);
  }

  List<Book> get popularBooks => [
        ...allBooks.where((book) => book.isPopular),
      ];

  List<Book> get newBooks => [
        ...allBooks.where((book) => book.isNew),
      ];
}
