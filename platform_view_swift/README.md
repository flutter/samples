# platform_view_swift

A Flutter sample app that combines a native iOS UIViewController
with a full-screen Flutter view.

## Goals for this sample

* Show a simple technique for combining native and Flutter views.

## The important bits

### `lib/main.dart`

The Flutter part of the application is quite simple, and all the action
takes place in a single file.

### `ios/Runner/PlatformViewController.swift` and `AppDelegate.swift`

These files contain the Swift code repsonsible for setting up a platform
channel, launching a native UIViewController, and returning control to
Flutter when finished.

## Questions/issues

If you have a general question about Flutter, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).

