import 'package:bookstore/src/screens/author_details.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../data/book.dart';

class BookDetailsScreen extends StatelessWidget {
  final Book? book;

  const BookDetailsScreen({
    Key? key,
    this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (book == null) {
      return const Scaffold(
        body: Center(
          child: Text('No book with found.'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(book!.title),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              book!.title,
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              book!.author.name,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            TextButton(
              child: const Text('View author (Push)'),
              onPressed: () {
                Navigator.of(context).push<void>(
                  MaterialPageRoute<void>(
                    builder: (context) {
                      return AuthorDetailsScreen(author: book!.author);
                    },
                  ),
                );
              },
            ),
            Link(
              uri: Uri.parse('/authors/${book!.author.id}'),
              builder: (context, followLink) {
                return TextButton(
                  child: const Text('View author (Link)'),
                  onPressed: followLink,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
