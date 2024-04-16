# ios_app_clip

A sample project demonstrating integration with iOS App Clip.

The App Clip target is rendered by Flutter and uses a plugin.

## Intent

1. Demonstrate it's possible to produce iOS App Clip targets rendered in Flutter.
2. Serve as a canonical example to test the App Clip scenario.
3. Let users validate their integration steps when following the guide at
   [flutter.dev/docs/development/platform-integration/ios-app-clip](https://flutter.dev/docs/development/platform-integration/ios-app-clip)

## To run

In order to run.

1. `flutter build ios --config-only`
1. `open Runner.xcworkspace`
1. Inside Xcode, select the `AppClip` target from the scheme dropdown
1. Select an iOS 16 or higher device
1. Select a development team as needed
1. Press run in Xcode to run

## Questions/issues

If you have a general question about iOS App Clips in Flutter, the
best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).