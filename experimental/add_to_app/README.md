# Add-to-App Sample

***The Add-to-App sample is designed to build with Flutter's `master` channel
and the latest version of CocoaPods. See the [README](../README.md) in the
`experimental` directory for details.***

This directory contains a bunch of Android and iOS projects that each import
a standalone Flutter module called `flutter_module`.

## Goals for this sample

* Show developers how to add Flutter to their existing applications.
* Show the following options:
  - Whether to build the Flutter module from source each time the app builds or
    rely on a separately pre-built module.
  - Whether plugins are needed by the Flutter module used in the app.

## The important bits

### Flutter modules

There are two Flutter modules included in the codebase:

* `flutter_module` displays the dimensions of the screen, a button that
  increments a simple counter, and an optional exit button.
* `flutter_module_using_plugin` does everything `flutter_module` does, and adds
  another button that will open the Flutter documentation in a browser using the
  [`url_launcher`](https://pub.dev/packages/url_launcher) Flutter plugin.

Both of these modules feature the latest Flutter embedding API. As a result,
prior to working with them, you need to configure your local installation of
Flutter to use the new API as well. To do so, run this command:

```
flutter config --enable-android-embedding-v2
```

Next, you need to resolve the Flutter modules' dependencies. Do so by running
this command from within the `flutter_module` and `flutter_module_using_plugin`
directories:

```bash
flutter packages get
```

### Android and iOS applications

In addition to the Flutter modules, this repo also includes a number of
Android and iOS applications that demonstrate different ways of importing
them.

With the exception of `android_using_prebuilt_module`, the Android apps are
ready to run once you've completed the `flutter packages get` commands listed
above. The iOS apps use CocoaPods, though, so you need to run this command to
install the dependencies listed in their Podfiles prior to running them the
first time.

This should be done in the individual project directories themselves. For
example, prior to running `ios_fullscreen` or `ios_using_plugin` for the first
time, you need to run these commands:

```bash
cd ios_fullscreen
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

### `android_using_prebuilt_module`

This app is essentially identical to `android_fullscreen` with one key
difference:

* The Flutter module is *not* built automatically when the app builds. Instead,
  it's built separately into an `aar`. The Android app is configured to import
  that `aar` along with its other gradle dependencies.

This can be useful for teams that don't want to require every developer working
on the app to have the Flutter toolchain installed on their local machines.

Prior to building `android_using_prebuilt_module` for the first time, the
Flutter module needs to be built into an `aar`. You can do that by running this
command from the `flutter_module` directory:

```
flutter build aar --debug
```

To build a release version of the `aar`, simply omit the debug flag:

```
flutter build aar
```

If the `flutter_module` project is updated, these commands should be repeated to
rebuild the `aar` files.

## Questions/issues

If you have a general question about incorporating Flutter into an existing
iOS or Android app, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
