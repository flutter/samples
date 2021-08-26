// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';

import '../data.dart';
import 'author_details.dart';

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
          child: Text('No book found.'),
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
                    builder: (context) =>
                        AuthorDetailsScreen(author: book!.author),
                  ),
                );
              },
            ),
            Link(
              uri: Uri.parse('/author/${book!.author.id}'),
              builder: (context, followLink) => TextButton(
                onPressed: followLink,
                child: const Text('View author (Link)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
