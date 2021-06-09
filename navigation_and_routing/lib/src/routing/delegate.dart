// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:bookstore/src/auth/auth.dart';
import 'package:bookstore/src/screens/sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:collection/collection.dart';

import '../data/author.dart';
import '../data/book.dart';
import '../data/library_scope.dart';
import '../screens/author_details.dart';
import '../screens/book_details.dart';
import '../screens/scaffold.dart';
import '../util/fade_transition_page.dart';
import 'guard.dart';
import 'parsed_route.dart';
import 'route_state.dart';

/// Displays a [BookstoreScaffold] with either a [BookDetailsScreen] or
/// [AuthorDetailsScreen] stacked on top.
class BookstoreRouterDelegate extends RouterDelegate<ParsedRoute>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<ParsedRoute> {
  final RouteState routeState;
  final BookstoreAuth auth;
  final RouteGuard<ParsedRoute> guard;
  final scaffoldKey = const ValueKey<String>('App scaffold');
  final bookDetailsKey = const ValueKey<String>('Book details screen');
  final authorDetailsKey = const ValueKey<String>('Author details screen');

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  BookstoreRouterDelegate(this.routeState, this.auth, this.guard) {
    routeState.addListener(notifyListeners);
    auth.addListener(notifyListeners);
  }

  @override
  Widget build(BuildContext context) {
    final pathTemplate = routeState.route.pathTemplate;
    final library = LibraryScope.of(context);

    Book? book;
    if (pathTemplate == '/books/:bookId') {
      book = library.allBooks.firstWhereOrNull(
          (b) => b.id.toString() == routeState.route.parameters['bookId']);
    }

    Author? author;
    if (pathTemplate == '/authors/:authorId') {
      author = library.allAuthors.firstWhereOrNull(
          (b) => b.id.toString() == routeState.route.parameters['authorId']);
    }

    return Navigator(
      key: navigatorKey,
      onPopPage: (route, dynamic result) {
        // When a page that is stacked on top of the scaffold is popped, display
        // the /books or /authors tab in BookstoreScaffold.
        if (route.settings is Page &&
            (route.settings as Page).key == bookDetailsKey) {
          routeState.go('/books');
        }

        if (route.settings is Page &&
            (route.settings as Page).key == authorDetailsKey) {
          routeState.go('/authors');
        }

        return route.didPop(result);
      },
      pages: [
        if (routeState.route.pathTemplate == '/')
          const FadeTransitionPage<void>(
            key: ValueKey('None'),
            child: Scaffold(),
          )
        else if (routeState.route.pathTemplate == '/signin')
          // Display the sign in screen.
          FadeTransitionPage<void>(
            key: const ValueKey('Sign in'),
            child: SignInScreen(
              onSignIn: (credentials) async {
                var signedIn = await auth.signIn(
                    credentials.username, credentials.password);
                if (signedIn) {
                  routeState.go('/books');
                }
              },
            ),
          )
        else ...[
          // Display the app
          FadeTransitionPage<void>(
            key: scaffoldKey,
            child: BookstoreScaffold(
              currentRoute: routeState.route,
            ),
          ),
          // Add an additional page to the stack if the user is viewing a book
          // or an author
          if (book != null)
            MaterialPage<void>(
              key: bookDetailsKey,
              child: BookDetailsScreen(
                book: book,
              ),
            )
          else if (author != null)
            MaterialPage<void>(
              key: authorDetailsKey,
              child: AuthorDetailsScreen(
                author: author,
              ),
            ),
        ],
      ],
    );
  }

  @override
  Future<void> setNewRoutePath(ParsedRoute configuration) async {
    routeState.route = await guard.redirect(configuration);
    return SynchronousFuture(null);
  }

  @override
  ParsedRoute get currentConfiguration {
    return routeState.route;
  }

  @override
  void dispose() {
    routeState.removeListener(notifyListeners);
    routeState.dispose();
    super.dispose();
  }
}
