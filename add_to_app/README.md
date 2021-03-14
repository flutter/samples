# Add-to-App Samples

This directory contains Android and iOS projects that import and use a Flutter
module. They're designed to show recommended approaches for adding Flutter to
existing Android and iOS apps.

## Samples Listing

* [`fullscreen`](./fullscreen) — Embeds a full screen instance of
  Flutter into an existing iOS or Android app.
* [`prebuilt_module`](./prebuilt_module) — Embeds a full screen
  instance of Flutter as a prebuilt library that can be loaded into an existing
  iOS or Android app.
* [`plugin`](./plugin) — Embeds a full screen Flutter instance that
  is using plugins into an existing iOS or Android app.
* [`books`](./books) — Mimics a real world use-case of embedding Flutter into an
  existing Android app and demonstrates using
  [Pigeon](https://pub.dev/packages/pigeon) to communicate between Flutter and
  the host application.
* [`multiple_flutters`](./multiple_flutters) — Shows the usage of the Flutter
  Engine Group APIs to embed multiple instances of Flutter into an existing app
  with low memory cost.
* [`android_view`](./android_view) — Shows how to integrate a Flutter
  add-to-app module at a view level for Android.

## Goals for these samples

* Show developers how to add Flutter to their existing applications.
* Show the following options:
  * Whether to build the Flutter module from source each time the app builds or
    rely on a separately pre-built module.
  * Whether plugins are needed by the Flutter module used in the app.
* Show Flutter being integrated ergonomically with applications with existing
  middleware and business logic data classes.

## Installing Cocoapods

The iOS samples in this repo require the latest version of Cocoapods. To make
sure you've got it, run the following command on a macOS machine:

```bash
sudo gem install cocoapods
```

See https://guides.cocoapods.org/using/getting-started.html for more details.

## Questions/issues

If you have a general question about incorporating Flutter into an existing
iOS or Android app, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
