# Add-to-App Sample

***The Add-to-App sample is designed to build with Flutter's `master` channel
and the latest version of CocoaPods. See the [README](../README.md) in the
`experimental` directory for details.***

This directory contains a bunch of Android and iOS projects that each import
a standalone Flutter module called `flutter_module`.

## Goals for this sample

* Show developers how to add Flutter to their existing applications.

## The important bits

### Flutter modules 

There are two Flutter modules included in the codebase: `flutter_module` and
`flutter_module_with_plugin`. The only significant difference between the two
is that `flutter_module_with_plugin` depends on a Flutter plugin, 
[`path_provider`](https://pub.dev/packages/path_povider), and `flutter_module`
 doesn't.

Before running any of the Android or iOS apps included in this sample project,
you first need to resolve the Flutter modules' depencies. Do so by running this
command from within the `flutter_module` and `flutter_module_with_plugin`
directories:

```bash
flutter packages get
```

### Android and iOS applications

In addition to the Flutter modules, this repo also includes a number of
Android and iOS applications that demonstrate different ways of importing
them.

The Android apps are ready to run once you've completed the 
`flutter packages get` commands listed above. The iOS apps use CocoaPods,
so you need to run this command to install the dependencies listed in their
Podfiles prior to running them the first time:

```bash
pod install
```

Once that command is complete, you'll find an `xcworkspace` file in the project
directories with the correct Flutter module (and any other dependencies)
included. Open that workspace file, and the app is ready to build and run.

### `android_fullscreen` and `ios_fullscreen`

These apps showcase a relatively straightforward integration of
`flutter_module`:

* The Flutter module's code is built as part of the overall app build process.
* The engine is warmed up at app launch.
* The Flutter view is presented with a full-screen Activity or
  UIViewController.
* The Flutter view can only exit; it does not launch any new, native Activities
  or UIViewControllers in response to user actions.

If you are new to Flutter's add-to-app APIs, these projects are a great place
to begin learning how to use them.

## Questions/issues

If you have a general question about incorporating Flutter into an existing
iOS or Android app, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
