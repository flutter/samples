# prebuild_module

Embeds a full screen instance of Flutter as a prebuilt library that can be
loaded into an existing iOS or Android app.

## Description

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
flutter build ios-framework --xcframework --output=../ios_using_prebuilt_module/Flutter
```

This will output frameworks for debug, profile, and release modes into
`ios_using_prebuilt_module/Flutter`. The project file for
`ios_using_prebuilt_module` has been configured to find the frameworks there.

For more information on how to modify an existing iOS app to reference prebuilt
Flutter frameworks, see this article in the Flutter GitHub wiki:

https://flutter.dev/docs/development/add-to-app/ios/project-setup

## tl;dr

If you're just looking to get up and running quickly, these bash commands will
fetch packages and set up dependencies (note that the above commands assume
you're building for both iOS and Android, with both toolchains installed):

```bash
  #!/bin/bash
  set -e

  cd flutter_module/
  flutter pub get

  # For Android builds:
  flutter build aar
  open -a "Android Studio" ../android_using_prebuilt_module/ # macOS only
  # Or open the ../android_using_prebuilt_module folder in Android Studio for
  # other platforms.

  # For iOS builds:
  flutter build ios-framework --xcframework --output=../ios_using_prebuilt_module/Flutter
  open ../ios_using_prebuilt_module/IOSUsingPrebuiltModule.xcodeproj
```

## Requirements

* Flutter
* Android
  * Android Studio
* iOS
  * Xcode
  * Cocoapods

## Questions/issues

See [add_to_app/README.md](../README.md) for further help.
