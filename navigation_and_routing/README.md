# Navigation and Routing sample code

Sample code for [Learning Flutter's New Navigation and Routing System][article],
an article explaining Navigator 2.0.

## Samples

**Navigator 1.0 samples**

* [nav_1/anonymous_routes.dart](lib/nav_1/anonymous_routes.dart) - Shows how to
  use a Navigator to push and pop anonymous routes (e.g. MaterialPageRoute)
* [nav_1/named_routes.dart](lib/nav_1/named_routes.dart) - Shows how to use
  define named routes via the `routes` parameter on MaterialApp, and navigate
  using Navigator.pushNamed
* [nav_1/on_generate_route.dart](lib/nav_1/on_generate_route.dart) - Shows how
  to handle arbitrary named routes using the `onGenerateRoute` callback defined
  in the `MaterialApp` constructor.

**Navigator 2.0 samples**

* [nav_2/pages.dart](lib/nav_2/pages.dart) - Shows how to define a list of
  [Page] objects on Navigator declaratively.
* [nav_2/router.dart](lib/nav_2/router.dart) - Full sample that shows a custom
  RouteInformationParser and RouterDelegate parsing named routes and
  declaratively building the stack of pages for the Navigator.


**Advanced**

* [nav_2_advanced/nested_router.dart](lib/nav_2_advanced/nested_router.dart) -
  Shows two [RouterDelegate], one nested within the other. A
  [BottomNavigationBar] can be used to select the route of the outer
  RouterDelegate, and additional routes can be pushed onto the inner
  RouterDelegate / Navigator.
* [nav_2_advanced/transition_delegate.dart](lib/nav_2_advanced/transition_delegate.dart)
  Shows how a custom TransitionDelegate can be used to customized when
  transition animations are shown.


## Running

Each file in this project is an entrypoint. To run, specify the filename of
the sample:

```bash
flutter run lib/nav_2/router.dart
```

[article]: https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade
