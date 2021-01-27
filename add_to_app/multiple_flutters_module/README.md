# multiple_flutters_module

This is the module that is embedded in the `multiple_flutters_ios` and
`multiple_flutters_android (TODO)` projects.

## Getting Started

For iOS instructions, see:
[multiple_flutters_ios](../multiple_flutters_ios/README.md).

For Android instructions, see:
[multiple_flutters_android](../multiple_flutters_android/README.md).

## Flutter Engine Group

These examples use the Flutter engine group APIs on the host platform.  This
allows for the sharing of memory and CPU intensive resources to be shared
between engine instances.  More info on those API's can be found in the source
code:

* iOS -
  [FlutterEngineGroup.h](https://github.com/flutter/engine/blob/master/shell/platform/darwin/ios/framework/Headers/FlutterEngineGroup.h)
* Android -
  [FlutterEngineGroup.java](https://github.com/flutter/engine/blob/master/shell/platform/android/io/flutter/embedding/engine/FlutterEngineGroup.java)

## Data Synchronization Description

This sample code uses a somewhat novel data synchronization mechanism to share
data between the host platform and multiple instances of Flutter by combining
the [Observer design pattern](https://en.wikipedia.org/wiki/Observer_pattern)
and [Flutter platform
channels](https://flutter.dev/docs/development/platform-integration/platform-channels).
Here is how it works:

* The definitive source of truth for the data lives in the host platform data
  model.
* Every host view displaying Flutter content maintains: a Flutter engine, a
  bidirectional platform channel, and a subscription to the host data model.
* Flutter instances maintain a copy of the data they are interested in reading,
  and this data is seeded by the host when the instance is first displayed.
* Mutations from Flutter code are sent to the host platform via the channel. The
  host platform performs the mutations, and then notifies all host view
  controllers and Flutter engines of the new value.
* Mutations from host code happen directly on the data model who notifies host
  view controllers and Flutter engines of the new value.

This is just one possible way to synchronize the data between the host platform
and multiple Flutter instances.  A more complete implementation is proposed in
the work of
[flutter/issues/72030](https://github.com/flutter/flutter/issues/72030).
