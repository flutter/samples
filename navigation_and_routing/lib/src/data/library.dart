import 'package:collection/collection.dart';

import 'author.dart';
import 'book.dart';

class Library {
  final List<Book> allBooks = [];
  final List<Author> allAuthors = [];

  void addBook(String title, String authorName, bool isPopular, bool isNew) {
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
