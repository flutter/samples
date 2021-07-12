// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../auth.dart';
import '../data.dart';
import '../routing.dart';
import '../screens/sign_in.dart';
import '../widgets/fade_transition_page.dart';
import '../widgets/library_scope.dart';
import 'author_details.dart';
import 'book_details.dart';
import 'scaffold.dart';

/// Builds the top-level navigator for the app. The pages to display are based
/// on the [routeState] that was parsed by the TemplateRouteParser.
class BookstoreNavigator extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const BookstoreNavigator({
    required this.navigatorKey,
    Key? key,
  }) : super(key: key);

  @override
  _BookstoreNavigatorState createState() => _BookstoreNavigatorState();
}

class _BookstoreNavigatorState extends State<BookstoreNavigator> {
  final signInKey = const ValueKey('Sign in');
  final scaffoldKey = const ValueKey<String>('App scaffold');
  final bookDetailsKey = const ValueKey<String>('Book details screen');
  final authorDetailsKey = const ValueKey<String>('Author details screen');

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context)!;
    final authState = BookstoreAuthScope.of(context)!;
    final pathTemplate = routeState.route.pathTemplate;
    final library = LibraryScope.of(context);

    Book? selectedBook;
    if (pathTemplate == '/book/:bookId') {
      selectedBook = library.allBooks.firstWhereOrNull(
          (b) => b.id.toString() == routeState.route.parameters['bookId']);
    }

    Author? selectedAuthor;
    if (pathTemplate == '/author/:authorId') {
      selectedAuthor = library.allAuthors.firstWhereOrNull(
          (b) => b.id.toString() == routeState.route.parameters['authorId']);
    }

    return Navigator(
      key: widget.navigatorKey,
      onPopPage: (route, dynamic result) {
        // When a page that is stacked on top of the scaffold is popped, display
        // the /books or /authors tab in BookstoreScaffold.
        if (route.settings is Page &&
            (route.settings as Page).key == bookDetailsKey) {
          routeState.go('/books/popular');
        }

        if (route.settings is Page &&
            (route.settings as Page).key == authorDetailsKey) {
          routeState.go('/authors');
        }

        return route.didPop(result);
      },
      pages: [
        if (routeState.route.pathTemplate == '/signin')
          // Display the sign in screen.
          FadeTransitionPage<void>(
            key: signInKey,
            child: SignInScreen(
              onSignIn: (credentials) async {
                var signedIn = await authState.signIn(
                    credentials.username, credentials.password);
                if (signedIn) {
                  routeState.go('/books/popular');
                }
              },
            ),
          )
        else ...[
          // Display the app
          FadeTransitionPage<void>(
            key: scaffoldKey,
            child: const BookstoreScaffold(),
          ),
          // Add an additional page to the stack if the user is viewing a book
          // or an author
          if (selectedBook != null)
            MaterialPage<void>(
              key: bookDetailsKey,
              child: BookDetailsScreen(
                book: selectedBook,
              ),
            )
          else if (selectedAuthor != null)
            MaterialPage<void>(
              key: authorDetailsKey,
              child: AuthorDetailsScreen(
                author: selectedAuthor,
              ),
            ),
        ],
      ],
    );
  }
}
