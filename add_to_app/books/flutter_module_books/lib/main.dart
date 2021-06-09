// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_module_books/api.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xff6200ee),
      ),
      home: const BookDetail(),
    );
  }
}

typedef BookReceived = void Function(Book book);

class FlutterBookApiHandler extends FlutterBookApi {
  FlutterBookApiHandler(this.callback);

  final BookReceived callback;

  @override
  void displayBookDetails(Book book) {
    assert(
      book != null,
      'Non-null book expected from FlutterBookApi.displayBookDetails call.',
    );
    callback(book);
  }
}

class BookDetail extends StatefulWidget {
  const BookDetail({this.hostApi, this.flutterApi, Key key}) : super(key: key);

  // These are the outgoing and incoming APIs that are here for injection for
  // tests.
  final HostBookApi hostApi;
  final FlutterBookApi flutterApi;

  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  Book book;

  HostBookApi hostApi;

  FocusNode textFocusNode = FocusNode();
  TextEditingController titleTextController = TextEditingController();
  TextEditingController subtitleTextController = TextEditingController();
  TextEditingController authorTextController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // This `HostBookApi` class instance lets us make outgoing calls to the
    // platform.
    hostApi = widget.hostApi ?? HostBookApi();

    // Registering this `FlutterBookApiHandler` class lets us receive incoming
    // calls from the platform.
    // TODO(gaaclarke): make the setup method an instance method so it's
    // injectable https://github.com/flutter/flutter/issues/59119.
    FlutterBookApi.setup(FlutterBookApiHandler(
        // The `FlutterBookApi` just has one method. Just give a closure for that
        // method to the handler class.
        (book) {
      setState(() {
        // This book model is what we're going to return to Kotlin eventually.
        // Keep it bound to the UI.
        this.book = book;
        titleTextController.text = book.title;
        titleTextController.addListener(() {
          this.book?.title = titleTextController.text;
        });
        // Subtitle could be null.
        // TODO(gaaclarke): https://github.com/flutter/flutter/issues/59118.
        subtitleTextController.text = book.subtitle ?? '';
        subtitleTextController.addListener(() {
          this.book?.subtitle = subtitleTextController.text;
        });
        authorTextController.text = book.author;
        authorTextController.addListener(() {
          this.book?.author = authorTextController.text;
        });
      });
    }));
  }

  void clear() {
    book = null;
    // Keep focus if going to the home screen but unfocus if leaving
    // the activity.
    textFocusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Details'),
        leading: IconButton(
          icon: const Icon(Icons.clear),
          // Pressing clear cancels the edit and leaves the activity without
          // modification.
          onPressed: () {
            hostApi.cancel();
            clear();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            // Pressing save sends the updated book to the platform.
            onPressed: () {
              hostApi.finishEditingBook(book);
              clear();
            },
          ),
        ],
      ),
      body: book == null
          // Draw a spinner until the platform gives us the book to show details
          // for.
          ? const Center(child: CircularProgressIndicator())
          : Focus(
              focusNode: textFocusNode,
              child: ListView(
                padding: const EdgeInsets.all(24),
                children: [
                  TextField(
                    controller: titleTextController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      hintText: "Title",
                      labelText: "Title",
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: subtitleTextController,
                    maxLines: 2,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      hintText: "Subtitle",
                      labelText: "Subtitle",
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: authorTextController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      filled: true,
                      hintText: "Author",
                      labelText: "Author",
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Divider(),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          '${book.pageCount} pages  ~  published ${book.publishDate}'),
                    ),
                  ),
                  const Divider(),
                  const SizedBox(height: 32),
                  const Center(
                    child: Text(
                      'BOOK DESCRIPTION',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    book.summary,
                    style: TextStyle(color: Colors.grey.shade600, height: 1.24),
                  ),
                ],
              ),
            ),
    );
  }
}
