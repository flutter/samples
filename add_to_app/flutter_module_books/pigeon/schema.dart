import 'package:pigeon/pigeon.dart';

class Book {
  String title;
  String subtitle;
  String author;
  String description;
  String publishDate;
  int pageCount;
  // Thumbnail thumbnail;
}

// TODO(gaaclarke): add this back when the https://github.com/flutter/flutter/issues/58896
// crash is resolved.
// class Thumbnail {
//   String url;
// }

@FlutterApi()
abstract class FlutterBookApi {
  void displayBookDetails(Book book);
}

@HostApi()
abstract class HostBookApi {
  void cancel();
  void finishedEditingBook(Book book);
}
