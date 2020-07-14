# Platform Channel Samples

A sample app which demonstrates how to use `MethodChannel`, `EventChannel`, `BasicMessageChannel` and `MessageCodec` in Flutter.

This sample is currently being built. Not all platforms and functionality are in place.

## Goals

* Demonstrate how to use `MethodChannel` to invoke platform methods.
* Demonstrate how to use `EventChannel` to listen continuous value changes from the platform.
* Demonstrate how to use `BasicMessageChanngel` and `MessageCodec` to send messages of different types across the platform.

## The important bits

* ### `method_channel_demo.dart` & `counter_method_channel.dart`
The [`counter_method_channel.dart`](./lib/src/counter_method_channel.dart) demonstrates how to implement `MethodChannel` with two platform methods used to
increment and decrement the value of counter. 

The [`method_channel_demo.dart`](./lib/src/method_channel_demo.dart) has the widget to demonstrate how to use the platform methods from `counter_method_channel.dart` to increment
and decrement the value of counter.

* ### `event_channel_demo.dart` & `accelerometer_event_channel.dart`
The [`accelerometer_event_channel.dart`](./lib/src/accelerometer_event_channel.dart) demonstrates how to implement `EventChannel` to listen to value changes from the
Accelerometer sensor from native side.

The [`event_channel_demo.dart`](./lib/src/event_channel_demo.dart) has the widget to demonstrate how to use `EventChannnel` from the `accelerometer_event_channel.dart` to display
continuous values of Accelerometer Sensor from platform.

* ### `platform_image_demo.dart` & `image_basic_message_channel.dart`
The [`image_basic_message_channel.dart`](./lib/src/image_basic_message_channel.dart) demonstrates how to implement `BasicMessageChannel` using `StandardMessageCodec`
to load an image from native asset.

The [`platform_image_demo.dart`](./lib/src/platform_image_demo.dart) has the widget to demonstrate how to display the image obtained from the `BasicMessageChannel`.

* ### `pet_list_screen.dart`, `add_pet_details.dart` & `pet_list_message_channel.dart`
The [`pet_list_message_channel`](./lib/src/pet_list_message_channel.dart) demonstrates how to implement `BasicMessageChannel` using `JSONMessageCodec` and `BinaryCodec`
to add the pet details and remove it respectively.

The [`pet_list_screen.dart`](./lib/src/pet_list_screen.dart) demonstrates how to use `BasicMessageChannel` to receive list of pets from the platform whenever a new pet is added.
It also has a widget to display the list of pets obtained from platform.

The [`add_pet_details.dart`](./lib/src/add_pet_details.dart) is used to add new pets to the native list using methods defined in `pet_list_message_channel.dart`.

## Questions/issues

If you have a general question about Platform Channels in Flutter, the
best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue [here](https://github.com/flutter/samples/issues).
