# Navigation and Routing
A Flutter sample app that shows how to configure the
[Router](https://api.flutter.dev/flutter/widgets/Router-class.html) to handle
common navigation scenarios.

## How it works
The top-level widget, `Bookstore`, sets up the state for this app. It places
three InheritedNotifiers in the wiget tree, RouteStateScope, BookstoreAuthScope,
and LibraryScope, which provide the state for the application:

  - **RouteState**: stores the current route path (`/book/1`) as a `ParsedRoute`
    object (see below).
  - **BookstoreAuthScope**: stores a mock authentication API, `BookstoreAuth`.
  - **LibraryScope**: stores the data for the app, `Library`.

The `Bookstore` widget also uses  uses the [MaterialApp.router()][router-ctor]
constructor to opt-in to the [Router][] API. This constructor requires a
[RouterDelegate][] and [RouteInformationParser][]. This app uses the
`routing.dart` library, described below.

## routing.dart
This library contains a general-purpose routing solution for medium-sized apps.
It implements these classes:

- **SimpleRouterDelegate**: Implements RouterDelegate. Updates `RouteState` when
  a new route has been pushed to the application by the operating system. Also
  notifies the `Router` widget whenever the `RouteState` changes.
- **TemplateRouteParser**: Implements RouteInformationParser. Parses the
  incoming route path into a `ParsedRoute` object. A `RouteGuard` can be
  provided to guard access to certain routes.
- **ParsedRoute**: Contains the current route location ("/user/2"), path
  parameters ({id: 2}), query parameters ("?search=abc"), and path template
  ("/user/:id")
- **RouteState**: Stores the current `ParsedRoute`.
- **RouteGuard**: Guards access to routes. Can be overridden to redirect the
  incoming route if a condition isn't met.

## App Structure

The `SimpleRouterDelegate` constructor requires a `WidgetBuilder` parameter and
a `navigatorKey`. Instead of returning a Navigator directly, a
`BookstoreNavigator` widget is used, which configures a Navigator with a list of
pages, based on the current RouteState.

```dart
routerDelegate = SimpleRouterDelegate(
  routeState: routeState,
  navigatorKey: navigatorKey,
  builder: (context) => BookstoreNavigator(
    navigatorKey: navigatorKey,
  ),
);
```

This Navigator is configured to display either the sign-in screen or the
BookstoreScaffold. An additional screen is stacked on top of the
`BookstoreScaffold` if a book or author is currently selected:

```dart
return Navigator(
  key: widget.navigatorKey,
  onPopPage: (route, dynamic result) {
    // ...
  },
  pages: [
    if (routeState.route.pathTemplate == '/signin')
      FadeTransitionPage<void>(
        key: signInKey,
        child: SignInScreen(),
      ),
    else ...[
      // Display the app
      FadeTransitionPage<void>(
        key: scaffoldKey,
        child: BookstoreScaffold(),
      ),
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
```

The `BookstoreScaffold` widget uses `package:adaptive_navigation` to build a
navigation rail or bottom navigation bar based on the size of the screen. The
body of this screen is `BookstoreScaffoldBody`, which configures a nested
Navigator to display either the `AuthorsScreen`, `SettingsScreen`, or
`BooksScreen` widget.

[Router]: https://api.flutter.dev/flutter/widgets/Router-class.html
[RouterDelegate]: https://api.flutter.dev/flutter/widgets/RouterDelegate-class.html
[RouteInformationParser]: https://api.flutter.dev/flutter/widgets/RouteInformationParser-class.html
[router-ctor]: https://api.flutter.dev/flutter/material/MaterialApp/MaterialApp.router.html
