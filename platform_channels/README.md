# Platform Channel Samples

A sample app which demonstrates how to use `MethodChannel`, `EventChannel`, `BasicMessageChannel` and `MessageCodec` in Flutter.

## Goals

* Demonstrate how to use `MethodChannel` to invoke platform methods.
* Demonstrate how to use `EventChannel` to listen continuous value changes from the platform.
* Demonstrate how to use `BasicMessageChannel` and `MessageCodec` to send messages of different types across the platform.

## The important bits

### [Method Channel demo](./lib/src/method_channel_demo.dart)

Demonstrates how to implement a `MethodChannel` to increment and decrement a
counter.

### [Event Channel demo](./lib/src/event_channel_demo.dart)

Demonstrates how to implement an `EventChannel` to listen to value changes from
the Accelerometer sensor from native side.

### [Platform Image demo](./lib/src/platform_image_demo.dart)

Demonstrates how to implement a `BasicMessageChannel` using
`StandardMessageCodec` to load an image from native asset.

### [Basic Message Channel demo](./lib/src/pet_list_screen.dart)

Demonstrates how to implement `BasicMessageChannel` using `JSONMessageCodec`,
`BinaryCodec` and `StringCodec` to send and receive data about pets.

## Questions/issues

If you have a general question about Platform Channels in Flutter, the
best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue [here](https://github.com/flutter/samples/issues).
