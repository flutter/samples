# plugin

Embeds a full screen Flutter instance that is using plugins into an existing iOS
or Android app.

## Description

These apps are similar to the samples in [`fullscreen`](../fullscreen), with the
following differences:

* They include the native code (Kotlin or Swift) required to initialize plugins
  at Flutter engine creation time.
* Their Flutter view includes an additional button that opens the Flutter docs
  in the mobile device's browser.

If you're interested in learning what additional steps an app needs to take in
order to use a Flutter module that relies on plugins, these projects can help.

## tl;dr

If you're just looking to get up and running quickly, these bash commands will
fetch packages and set up dependencies (note that the above commands assume
you're building for both iOS and Android, with both toolchains installed):

```bash
  #!/bin/bash
  set -e

  cd flutter_module_using_plugin
  flutter pub get

  # For Android builds:
  open -a "Android Studio" ../android_using_plugin # macOS only
  # Or open the ../android_using_plugin folder in Android Studio for other platforms.

  # For iOS builds:
  cd ../ios_using_plugin
  pod install
  open IOSUsingPlugin.xcworkspace
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
