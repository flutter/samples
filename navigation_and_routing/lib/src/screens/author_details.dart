// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:bookstore/src/screens/book_details.dart';
import 'package:bookstore/src/widgets/book_list.dart';
import 'package:flutter/material.dart';

import '../data/author.dart';

class AuthorDetailsScreen extends StatelessWidget {
  final Author author;

  const AuthorDetailsScreen({
    Key? key,
    required this.author,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(author.name),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: BookList(
                books: author.books,
                onTap: (book) {
                  Navigator.of(context).push<dynamic>(
                    MaterialPageRoute<dynamic>(
                      builder: (context) {
                        return BookDetailsScreen(
                          book: book,
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
