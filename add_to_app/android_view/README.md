# android_view

An example of an Android app that integrates a Flutter add-to-app module at a
view level.

## tl;dr

If you're just looking to get up and running quickly, these bash commands will
fetch packages and set up dependencies (note that the above commands assume
you're building for both iOS and Android, with both toolchains installed):

```bash
  #!/bin/bash
  set -e

  cd flutter_module_using_plugin/
  flutter pub get

  # For Android builds:
  open -a "Android Studio" ../android_view # macOS only
  # Or open the ../android_fullscreen folder in Android Studio for other platforms.
```

## Getting Started

For more information about Flutter, check out
[flutter.dev](https://flutter.dev).

For instructions on how to integrate Flutter modules into your existing
applications, see Flutter's
[add-to-app documentation](https://flutter.dev/docs/development/add-to-app).
