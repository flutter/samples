# Add-to-App Sample

This directory contains a bunch of Android and iOS projects that each import a
standalone Flutter module.

## Goals for this sample

* Show developers how to add Flutter to their existing applications.
* Show the following options:
  - Whether to build the Flutter module from source each time the app builds or
    rely on a separately pre-built module.
  - Whether plugins are needed by the Flutter module used in the app.

## Installing Cocoapods

The iOS samples in this repo require the latest version of Cocoapods. To install
it, run the following command on a MacOS machine:

```bash
sudo gem install cocoapods
```

See https://guides.cocoapods.org/using/getting-started.html for more details.

## The important bits

### Flutter modules

There are two Flutter modules included in the codebase:

* `flutter_module` displays the dimensions of the screen, a button that
  increments a simple counter, and an optional exit button.
* `flutter_module_using_plugin` does everything `flutter_module` does and adds
  another button that will open the Flutter documentation in a browser using the
  [`url_launcher`](https://pub.dev/packages/url_launcher) Flutter plugin.

Before using them, you need to resolve the Flutter modules' dependencies. Do so
by running this command from within the `flutter_module` and
`flutter_module_using_plugin` directories:

```bash
flutter packages get
```

### Android and iOS applications

In addition to the Flutter modules, this repo also includes a number of
Android and iOS applications that demonstrate different ways of importing
them.

With the exception of `android_using_prebuilt_module`, the Android apps are
ready to run once you've completed the `flutter packages get` commands listed
above. Two of the iOS apps (`ios_fullscreen` and `ios_using_plugin`) use
Cocoapods, though, so you need to run this command within their project
directories to install their dependencies:

```bash
pod install
```

Once that command is complete, you'll find an `xcworkspace` file in the project
directories with the correct Flutter module (and any other dependencies)
included. Open that workspace file, and the app is ready to build and run.

### `android_fullscreen` and `ios_fullscreen`

These apps showcase a relatively straightforward integration of
`flutter_module`:

* The Flutter module is built along with the app when the app is built.
* The Flutter engine is warmed up at app launch.
* The Flutter view is presented with a full-screen Activity or
  UIViewController.
* The Flutter view is a navigational leaf node; it does not launch any new,
  native Activities or UIViewControllers in response to user actions.

If you are new to Flutter's add-to-app APIs, these projects are a great place
to begin learning how to use them.

### `android_using_plugin` and `ios_plugin`

These apps are similar to `android_fullscreen` and `ios_fullscreen`, with the
following differences:

* Rather than importing `flutter_module`, they import
  `flutter_module_using_plugin`.
* They include the native code (Kotlin or Swift) required to initialize plugins
  at Flutter engine creation time.
* Their Flutter view includes an additional button that opens the Flutter docs
  in the mobile device's browser.

If you're interested in learning what additional steps an app needs to take in
order to use a Flutter module that relies on plugins, these projects can help.

### `android_using_prebuilt_module` and  `ios_using_prebuilt_module`

These apps are essentially identical to `android_fullscreen` and
`ios_fullscreen`, respectively, with one key difference. Rather than being set
up to compile the `flutter_module` from source each time the app is built, they
import a the module as a prebuilt `aar` (Android) or framework (iOS). This can
be useful for teams that don't want to require every developer working on the
app to have the Flutter toolchain installed on their local machines.

Prior to building either project for the first time, the `flutter_module` needs
to be built.

**Building for `android_using_prebuilt_module`**

To build `flutter_module` as an aar, run this command from the `flutter_module`
directory:

```bash
flutter build aar
```

It will produce `aar` files for debug, profile, and release mode. The Android
app is configured to import the appropriate `aar` based on its own build
configuration, so if you build a debug version of the app, it will look
for the debug `aar`, and so on.

If the `flutter_module` project is updated, the `aar` files must be rebuilt via
one of the commands above in order for those changes to appear in the app.

**Building for `ios_using_prebuilt_module`**

To build `flutter_module` as a set of frameworks, run this command from the
`flutter_module` directory:

```bash
flutter build ios-framework --output=../ios_using_prebuilt_module/Flutter
```

This will output frameworks for debug, profile, and release modes into
`ios_using_prebuilt_module/Flutter`. The project file for
`ios_using_prebuilt_module` has been configured to find the frameworks there.

For more information on how to modify an existing iOS app to reference prebuilt
Flutter frameworks, see this article in the Flutter GitHub wiki:

https://flutter.dev/docs/development/add-to-app/ios/project-setup

## Questions/issues

If you have a general question about incorporating Flutter into an existing
iOS or Android app, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
