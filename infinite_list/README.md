# infinite_list

A Flutter sample app that shows an implementation of the "infinite list" UX pattern. That is,
a list is shown to the user as if it was continuous although it is internally paginated.
This is a common feature of mobile apps, from shopping catalogs through search engines
to social media clients.

![An animated gif of the app in action](https://user-images.githubusercontent.com/919717/81858860-3a1e3280-9519-11ea-8e9c-9d22ac1bf0ed.gif)

This particular sample uses the [Provider][] package but any other state management approach
would do.

[Provider]: https://pub.dev/packages/provider

## Goals for this sample

* Show how UI code can be "shielded" from complex asynchrony and pagination logic using
  a `ChangeNotifier`.
* Illustrate use of `Selector` from the Provider package.

## Questions/issues

If you have a general question about Flutter, the best places to go are:

* [Flutter documentation](https://flutter.dev/)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please
[file an issue](https://github.com/flutter/samples/issues).
