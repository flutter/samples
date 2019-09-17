# Add-to-App Sample

***The Add-to-App sample is designed to build with Flutter's `master` channel
and the latest version of CocoaPods. See the [README](../README.md) in the
`experimental` directory for details.***

This directory contains a bunch of Android and iOS projects that each import
a standalone Flutter module called `flutter_module`.

## Goals for this sample

* Show developers how to add Flutter to their existing applications.

## The important bits

### `flutter_module`

This is the Flutter module that'll be added to some of the individual projects
in the `add_to_app` folder.

The first time you download this repo, you need to first resolve this
module's dependencies by running this command in the `flutter_module`
directory:

```bash
flutter packages get
```

### `flutter_module_using_plugin`

This is the Flutter module that'll be added to a few of the individual projects
in the `add_to_app` folder.

Like `flutter_module` above, you'll need to run this command in the
`flutter_module_using_plugin` directory before compiling any of the projects
that depend on it:

```bash
flutter packages get
```

### `android_fullscreen`

An Android application that imports `flutter_module` and uses it to display
a `FlutterActivity` containing widgets from the module. This project brings
in the Flutter module's Android host wrapper as a gradle sub-module.

### `ios_fullscreen`

An iOS application that imports `flutter_module` and uses it to display
a `FlutterViewController` containing widgets from the module. This project
uses CocoaPods, so prior to running it for the first time, run this command
in the `ios_fullscreen` directory to set up the workspace file:

```bash
pod install
```

Then open `SimpleIOSExample.xcworkspace` with Xcode. This
workspace will have the Flutter module linked in as a dependent CocoaPod.

## Questions/issues

If you have a general question about incorporating Flutter into an existing
iOS or Android app, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
