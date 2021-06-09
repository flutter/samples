import '../auth/auth.dart';
import 'guard.dart';
import 'parsed_route.dart';

/// An implementation of [RouteGuard] that redirects to /signIn
class BookstoreRouteGuard implements RouteGuard<ParsedRoute> {
  BookstoreAuth auth;

  BookstoreRouteGuard({
    required this.auth,
  });

  /// Redirect to /signin if the user isn't signed in.
  @override
  Future<ParsedRoute> redirect(ParsedRoute from) async {
    final signedIn = auth.signedIn;
    final signInRoute = ParsedRoute('/signin', '/signin', {}, {});

    // Go to /signin if the user is not signed in
    if (!signedIn && from != signInRoute) {
      return signInRoute;
    }
    // Go to /books if the user is signed in and tries to go to /signin.
    else if (signedIn && from == signInRoute) {
      return ParsedRoute('/books', '/books', {}, {});
    }
    return from;
  }
}
