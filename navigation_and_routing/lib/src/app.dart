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
  final auth = BookstoreAuth();
  late final BookstoreRouteGuard guard;
  late final RouteState routeState;
  late final SimpleRouterDelegate routerDelegate;
  late final TemplateRouteParser routeParser;
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
    guard = BookstoreRouteGuard(auth: auth);

    /// Configure the parser with all of the app's allowed path templates.
    routeParser = TemplateRouteParser(
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

    routeState = RouteState(routeParser);

    routerDelegate = SimpleRouterDelegate(
      routeState: routeState,
      navigatorKey: navigatorKey,
      builder: (context) => BookstoreNavigator(
        navigatorKey: navigatorKey,
      ),
    );

    // Listen for when the user logs out and display the signin screen.
    auth.addListener(_handleAuthStateChanged);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RouteStateScope(
      notifier: routeState,
      child: BookstoreAuthScope(
        notifier: auth,
        child: LibraryScope(
          library: library,
          child: MaterialApp.router(
            routerDelegate: routerDelegate,
            routeInformationParser: routeParser,
          ),
        ),
      ),
    );
  }

  void _handleAuthStateChanged() {
    if (!auth.signedIn) {
      routeState.go('/signin');
    }
  }

  @override
  void dispose() {
    auth.removeListener(_handleAuthStateChanged);
    routeState.dispose();
    routerDelegate.dispose();
    super.dispose();
  }
}
