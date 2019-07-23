# provider_shopper

A Flutter sample app that shows a state management approach using the [Provider][] package.
This is the app discussed in the [Simple app state management][simple] section of
[flutter.dev][].

![An animated gif of the app in action](https://camo.githubusercontent.com/cf301d68c65279a074aa3334ef7fff548f87c0e2/68747470733a2f2f666c75747465722e6465762f6173736574732f646576656c6f706d656e742f646174612d616e642d6261636b656e642f73746174652d6d676d742f6d6f64656c2d73686f707065722d73637265656e636173742d653061646130653833636438653766646361643834313637623866376666643765623565663835623063623839353766303363366630356264313662316365612e676966)

[Provider]: https://pub.dev/packages/provider
[simple]: https://flutter.dev/docs/development/data-and-backend/state-mgmt/simple
[flutter.dev]: https://flutter.dev/

## Goals for this sample

* Show simple use of `Provider` for providing an immutable value to a subtree
* Illustrate a simple state management approach using the ChangeNotifier class
* Show use of `ProxyProvider` for provided objects that depend on other provided objects

## The important bits

### `lib/main.dart`

Here the app sets up objects it needs to track state: a catalog and a shopping cart. It builds
a `MultiProvider` to provide both objects at once to widgets further down the tree.

The `CartModel` instance is provided using a `ChangeNotifierProxyProvider`, which combines
two types of functionality:

1. It will automatically subscribe to changes in `CartModel` (if you only want this functionality
   simply use `ChangeNotifierProvider`).
2. It takes the value of a previously provided object (in this case, `CatalogModel`, provided
   just above), and uses it to build the value of `CartModel` (if you only want
   _this_ functionality, simply use `ProxyProvider`).

### `lib/models/*`

This directory contains the model classes that are provided in `main.dart`. These classes
represent the app state.

### `lib/screens/*`

This directory contains widgets used to construct the two screens of the app: the catalog and
the cart. These widgets have access to the current state of both the catalog and the cart
via `Provider.of`.

## Questions/issues

If you have a general question about Provider, the best places to go are:

* [Provider documentation](https://pub.dev/documentation/provider/latest/)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
