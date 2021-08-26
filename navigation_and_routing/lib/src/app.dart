// Copyright 2021, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import 'auth.dart';
import 'data.dart';
import 'routing.dart';
import 'screens/navigator.dart';
import 'widgets/library_scope.dart';

class Bookstore extends StatefulWidget {
  const Bookstore({Key? key}) : super(key: key);

  @override
  _BookstoreState createState() => _BookstoreState();
}

class _BookstoreState extends State<Bookstore> {
  final _auth = BookstoreAuth();
  final _navigatorKey = GlobalKey<NavigatorState>();
  late final RouteState _routeState;
  late final SimpleRouterDelegate _routerDelegate;
  late final TemplateRouteParser _routeParser;

  final library = Library()
    ..addBook(
        title: 'Left Hand of Darkness',
        authorName: 'Ursula K. Le Guin',
        isPopular: true,
        isNew: true)
    ..addBook(
        title: 'Too Like the Lightning',
        authorName: 'Ada Palmer',
        isPopular: false,
        isNew: true)
    ..addBook(
        title: 'Kindred',
        authorName: 'Octavia E. Butler',
        isPopular: true,
        isNew: false)
    ..addBook(
        title: 'The Lathe of Heaven',
        authorName: 'Ursula K. Le Guin',
        isPopular: false,
        isNew: false);

  @override
  void initState() {
    final guard = BookstoreRouteGuard(auth: _auth);

    /// Configure the parser with all of the app's allowed path templates.
    _routeParser = TemplateRouteParser(
      allowedPaths: [
        '/signin',
        '/authors',
        '/settings',
        '/books/new',
        '/books/all',
        '/books/popular',
        '/book/:bookId',
        '/author/:authorId',
      ],
      guard: guard,
      initialRoute: '/signin',
    );

    _routeState = RouteState(_routeParser);

    _routerDelegate = SimpleRouterDelegate(
      routeState: _routeState,
      navigatorKey: _navigatorKey,
      builder: (context) => BookstoreNavigator(
        navigatorKey: _navigatorKey,
      ),
    );

    // Listen for when the user logs out and display the signin screen.
    _auth.addListener(_handleAuthStateChanged);

    super.initState();
  }

  @override
  Widget build(BuildContext context) => RouteStateScope(
        notifier: _routeState,
        child: BookstoreAuthScope(
          notifier: _auth,
          child: LibraryScope(
            library: library,
            child: MaterialApp.router(
              routerDelegate: _routerDelegate,
              routeInformationParser: _routeParser,
            ),
          ),
        ),
      );

  void _handleAuthStateChanged() {
    if (!_auth.signedIn) {
      _routeState.go('/signin');
    }
  }

  @override
  void dispose() {
    _auth.removeListener(_handleAuthStateChanged);
    _routeState.dispose();
    _routerDelegate.dispose();
    super.dispose();
  }
}
