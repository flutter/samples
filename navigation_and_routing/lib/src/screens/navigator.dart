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
  final BookstoreAuth auth;

  const BookstoreNavigator({
    required this.auth,
    required this.navigatorKey,
    Key? key,
  }) : super(key: key);

  @override
  _BookstoreNavigatorState createState() => _BookstoreNavigatorState();
}

class _BookstoreNavigatorState extends State<BookstoreNavigator> {
  final scaffoldKey = const ValueKey<String>('App scaffold');
  final bookDetailsKey = const ValueKey<String>('Book details screen');
  final authorDetailsKey = const ValueKey<String>('Author details screen');

  @override
  Widget build(BuildContext context) {
    final routeState = RouteStateScope.of(context)!;
    final pathTemplate = routeState.route.pathTemplate;
    final library = LibraryScope.of(context);

    Book? book;
    if (pathTemplate == '/book/:bookId') {
      book = library.allBooks.firstWhereOrNull(
          (b) => b.id.toString() == routeState.route.parameters['bookId']);
    }

    Author? author;
    if (pathTemplate == '/author/:authorId') {
      author = library.allAuthors.firstWhereOrNull(
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
            key: const ValueKey('Sign in'),
            child: SignInScreen(
              onSignIn: (credentials) async {
                var signedIn = await widget.auth
                    .signIn(credentials.username, credentials.password);
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
}
