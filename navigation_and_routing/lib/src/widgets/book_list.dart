import 'package:flutter/material.dart';

import '../data/book.dart';

class BookList extends StatelessWidget {
  final List<Book> books;
  final ValueChanged<Book>? onTap;

  const BookList({
    required this.books,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: books.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(
            books[index].title,
          ),
          subtitle: Text(
            books[index].author.name,
          ),
          onTap: onTap != null ? () => onTap!(books[index]) : null,
        );
      },
    );
  }
}
