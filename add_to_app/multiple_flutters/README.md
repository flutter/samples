# multiple_flutters

This is a sample that shows how to use the Flutter Engine Groups API to embed
multiple instances of Flutter into an existing Android or iOS project.

## Getting Started

For iOS instructions, see:
[multiple_flutters_ios](./multiple_flutters_ios/README.md).

For Android instructions, see:
[multiple_flutters_android](./multiple_flutters_android/README.md).

## Requirements

* Flutter -- after version 1991216543eb74e07c2de3746ca07c92071b19ac
* Android
  * Android Studio
* iOS
  * Xcode
  * Cocoapods

## Flutter Engine Group

These examples use the Flutter Engine Group APIs on the host platform which
allows engines to share memory and CPU intensive resources. This leads to easier
embedding of Flutter into an existing app since multiple entrypoints can be
maintained via a FlutterFragment on Android or a UIViewController on iOS.
Before FlutterEngineGroup, users had to juggle the usage of a small number of
engines judiciously.

More info on those API's can be found in the source
code:

- iOS -
  [FlutterEngineGroup.h](https://github.com/flutter/engine/blob/master/shell/platform/darwin/ios/framework/Headers/FlutterEngineGroup.h)
- Android -
  [FlutterEngineGroup.java](https://github.com/flutter/engine/blob/master/shell/platform/android/io/flutter/embedding/engine/FlutterEngineGroup.java)

## Important Files

### iOS

- [DataModel.swift](./multiple_flutters_ios/MultipleFluttersIos/HostViewController.swift)
  — Observable data model that is the source of truth for the host platform and Flutter.
- [HostViewController.swift](./multiple_flutters_ios/MultipleFluttersIos/HostViewController.swift)
  — A UIViewController that synchronizes to the DataModel.
- [main.dart](./multiple_flutters_module/lib/main.dart) — The Flutter source
  code.
- [SingleFlutterViewController.swift](./multiple_flutters_ios/MultipleFluttersIos/SingleFlutterViewController.swift)
  — A subclass of FlutterViewController that synchronizes with the DataModel.
- [DoubleFlutterViewController.swift](./multiple_flutters_ios/MultipleFluttersIos/DoubleFlutterViewController.swift)
  — A UIViewController that embeds multiple Flutter instances.

### Android

## Data Synchronization Description

This sample code performs data synchronization to share data between the host
platform and multiple instances of Flutter by combining the
[Observer design pattern](https://en.wikipedia.org/wiki/Observer_pattern) and
[Flutter platform channels](https://flutter.dev/docs/development/platform-integration/platform-channels).
Here is how it works:

- The definitive source of truth for the data lives in the host platform data
  model.
- Every host view displaying Flutter content maintains: a Flutter engine, a
  bidirectional platform channel, and a subscription to the host data model.
- Flutter instances maintain a copy of the data they are interested in reading,
  and this data is seeded by the host when the instance is first displayed.
- Mutations from Flutter code are sent to the host platform via the channel. The
  host platform performs the mutations, and then notifies all host view
  controllers and Flutter engines of the new value.
- Mutations from host code happen directly on the data model who notifies host
  view controllers and Flutter engines of the new value.

This is just one possible way to synchronize the data between the host platform
and multiple Flutter instances. A more complete implementation is proposed in
the work of
[flutter/issues/72030](https://github.com/flutter/flutter/issues/72030).
