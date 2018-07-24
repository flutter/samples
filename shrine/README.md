# Shrine

A sample shopping app that uses Material Component widgets in its UI and
[`scoped_model`](https://pub.dartlang.org/packages/scoped_model) to
manage the state of its shopping cart.

## Goals

* Show how to customize Flutter's Material Component widgets to produce
  a unique design for an app.
* Show how to use `scoped_model` to manage an app's state and access it
  across different routes and in different widgets.

This is a modified version of the app featured in Flutter's
[Material codelabs](https://codelabs.developers.google.com/?cat=Flutter).

## The important bits

### `/model/app_state_model.dart`

The model object representing the state of the app. It holds the
available products as well as what's in the shopping cart.

### `/supplemental`

A bunch of widgets that customize Material to produce the look and feel
of the app.

### `shopping_cart.dart`

The shopping cart widgets. They access the app state model via
`ScopedModelDescendant`, display the contents of the shopping cart, and
allow the user to edit them.

## Questions/issues

If you have a general question about any of the techniques you see in
the sample, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
