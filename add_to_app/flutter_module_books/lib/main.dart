import 'package:flutter/material.dart';
import 'package:flutter_module_books/api.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookDetail(),
    );
  }
}

typedef BookReceived = void Function(Book book);

class FlutterBookApiHandler extends FlutterBookApi {
  FlutterBookApiHandler(this.callback);

  final BookReceived callback;

  @override
  void displayBookDetails(Book book) {
    callback(book);
  }
}

class BookDetail extends StatefulWidget {
  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  Book book;

  // This `HostBookApi` class instance lets us make outgoing calls to the platform.
  HostBookApi hostApi = HostBookApi();

  FocusNode textFocusNode = FocusNode();
  TextEditingController titleTextController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Registering this `FlutterBookApiHandler` class lets us receive incoming
    // calls from the platform.
    FlutterBookApi.setup(FlutterBookApiHandler(
      // The `FlutterBookApi` just has one method. Just give a closure for that
      // method to the handler class.
      (Book book) {
        setState(() {
          // This book model is what we're going to return to Kotlin eventually.
          // Keep it bound to the UI.
          this.book = book;
          titleTextController.text = book.title;
          titleTextController.addListener(() {
            book.title = titleTextController.text;
          });
        });
     }
   ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
        leading: IconButton(
          icon: Icon(Icons.clear),
          // Pressing clear cancels the edit and leaves the activity without
          // modification.
          onPressed: () {
            // Keep focus if going to the home screen but unfocus if leaving
            // the activity.
            textFocusNode.unfocus();
            hostApi.cancel();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            // Pressing save sends the updated book to the platform.
            onPressed: () {
              // Keep focus if going to the home screen but unfocus if leaving
              // the activity.
              textFocusNode.unfocus();
              hostApi.finishedEditingBook(book);
            },
          ),
        ],
      ),
      body: book == null
        // Draw a spinner until the platform gives us the book to show details
        // for.
        ? Center(child: CircularProgressIndicator())
        : ListView(
            padding: EdgeInsets.all(16),
            children: [
              TextField(
                controller: titleTextController,
                focusNode: textFocusNode,
                decoration: InputDecoration(
                  filled: true,
                  hintText: "Title",
                  labelText: "Title",
                ),
              )
            ],
          ),
    );
  }
}
