# Provider Counter

The starter Flutter application, but using Provider to manage state.

This app is a direct counterpart to the
[simple counter application](https://flutter.io/docs/development/ui/widgets-intro#changing-widgets-in-response-to-input)
that you get when you create a new Flutter project. That one uses a `StatefulWidget` to manage
application state. The version in this repository uses a simple app state management approach,
`Provider`.

It shows how you might deal with state that is modified from outside the app (for example,
state synchronized over network) and which needs to be accessed and changed
from different parts of your app.

## Getting Started

The only important part of the app is the `lib/main.dart` file. It has comments that will walk you
through it.

For more information on the `provider` package (where `Provider` comes from), please
[see the package documentation](https://pub.dartlang.org/packages/provider).

For more information on state management in Flutter, and a list of other approaches,
head over to the
[State management page at flutter.dev](https://flutter.dev/docs/development/data-and-backend/state-mgmt).
