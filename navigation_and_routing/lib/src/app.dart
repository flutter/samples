import 'package:bookstore/src/auth/auth.dart';
import 'package:flutter/material.dart';

import 'data/library.dart';
import 'data/library_scope.dart';
import 'routing/auth_guard.dart';
import 'routing/delegate.dart';
import 'routing/parser.dart';
import 'routing/route_state.dart';

class Bookstore extends StatefulWidget {
  const Bookstore({Key? key}) : super(key: key);

  @override
  _BookstoreState createState() => _BookstoreState();
}

class _BookstoreState extends State<Bookstore> {
  final auth = BookstoreAuth();
  late final BookstoreRouteGuard guard;
  late final RouteState routeState;
  late final BookstoreRouterDelegate routerDelegate;

  /// Configure the parser with all of the app's allowed path templates.
  final routeParser = TemplateRouteParser([
    '/signin',
    '/books',
    '/authors',
    '/settings',
    '/books/new',
    '/books/all',
    '/books/popular',
    '/books/:bookId',
    '/authors/:authorId',
  ]);

  final library = Library()
    ..addBook('Left Hand of Darkness', 'Ursula K. Le Guin', true, true)
    ..addBook('Too Like the Lightning', 'Ada Palmer', false, true)
    ..addBook('Kindred', 'Octavia E. Butler', true, false)
    ..addBook('The Lathe of Heaven', 'Ursula K. Le Guin', false, false);

  @override
  void initState() {
    guard = BookstoreRouteGuard(auth: auth);
    routeState = RouteState(routeParser);
    routerDelegate = BookstoreRouterDelegate(routeState, auth, guard);
    auth.addListener(() async {
      if (!auth.signedIn) {
        routeState.go('/signin');
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RouteStateScope(
      state: routeState,
      child: BookstoreAuthScope(
        auth: auth,
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
}
