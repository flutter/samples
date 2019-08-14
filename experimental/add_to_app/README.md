# Add-to-App Sample

***The Add-to-App sample is designed to build with Flutter's `master` channel 
and the latest version of Cocoapods. See the [README](../README.md) in the 
`experimental` directory for details.***

This directory contains a bunch of Android and iOS projects that each import
a standalone Flutter module called `example_module`.

## Goals for this sample

* Show developers how to add Flutter to their existing applications.

## The important bits

### `example_module`

This is the Flutter module that'll be added to all the individual projects
in the `add2app` folder.

### `SimpleIOSExample`

An iOS application that imports `example_module` and uses it to display
a `FlutterViewController` containing widgets from the module. This project
uses CocoaPods, so prior to running it for the first time, use this command
to set up the workspace file:

```bash
cd SimpleIOSExample
pod install
```

## Questions/issues

If you have a general question about incorporating Flutter into an existing
iOS or Android app, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).

