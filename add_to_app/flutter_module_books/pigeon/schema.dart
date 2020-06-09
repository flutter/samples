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
