# provider_shopper

A Flutter sample app that shows a state management approach using the [Provider][] package.
This is the app discussed in the [Simple app state management][simple] section of
[flutter.dev][].

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
