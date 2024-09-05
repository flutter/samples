# Add-to-App Samples

This directory contains Android and iOS projects that import and use a Flutter
module. They're designed to show recommended approaches for [adding Flutter to
existing Android and iOS apps](https://docs.flutter.dev/add-to-app).

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

## Debugging

You can `flutter attach` to the running host application to [debug the Flutter
module](https://docs.flutter.dev/add-to-app/debugging). This will
allow you to hot reload, set breakpoints, and use DevTools and other debugging
functionality, similar to a full Flutter app.

## Issues

If you run into an issue with the sample itself, please file an issue
in the [Flutter samples repo](https://github.com/flutter/samples/issues).


## Updating Android samples and its dependencies

1. Open the top level build.gradle file in Android Studio
2. Open “Upgrade Assistant” and click upgrade

### Troubleshooting Android updates

* If after upgrading it fails to build, try upgrading to a slightly less new version
* If there's an "Unknown class version exception <VERSION NUMBER>"  try setting the version of Java used by modifying JAVA_HOME
* If it still fails to build, check that the Flutter code referenced in the build is up-to-date and doesn't use discontinued plugins. (Common cases include “namespace”)
* The 'project structure' -> 'modules' view can be helpful in understanding the dependency tree.
* Once the app builds with the latest gradle/agp, update any deprecated usages in app/build.gradle

* compileSdkVersion -> sdkVersion
* Update the target sdk version and read through each target sdk update
* Export broadcast receivers
* Update the way flutter is imported to use flutter gradle plugin
* https://flutter.dev/go/flutter-gradle-plugin-apply

* **When updating an app that uses AAR as a Flutter module** -- In android studio update any android dependencies that are indicated as in yellow as old. Keep `androidx.test:runner`, `androidx.test.espresso:espresso-core`, and `androidx.test:core`, as defined in https://github.com/flutter/packages/tree/main/packages/espresso
