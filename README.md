# Flutter samples

[![Build Status](https://github.com/flutter/samples/workflows/Main%20Branch%20CI/badge.svg)](https://github.com/flutter/samples/actions?workflow=Main%20Branch%20CI)

A collection of open source samples that illustrate best practices for
[Flutter].

## Contributing

We appreciate fixes and necessary improvements to existing samples. **But in most cases, we're not currently adding new samples to this repository** while we rethink sample code in the new LLM world.

Please read the [contributor's guide] if you have contributions.

Googler's, you can freely add samples to the [flutter/demos] repository.

## Index

### Quickstarts

* [`asset_transformation`] - Demonstrates how to transform images' color scales and formats.
* [`background_isolate_channels`] - Demonstrates how to use long-lived isolates.
* [`cupertino_gallery`] - A gallery of Cupertino widgets, demonstrating iOS-style UI components in Flutter.
* [`date_planner`] - An in-progress exploration of an iOS-style Date Planner app, similar to the SwiftUI Tutorial app.
* [`desktop_photo_search`] - Demonstrates desktop features in both Material and FluentUI design systems.
* [`dynamic_theme`] - A developer sample demonstrating how to call on-device Flutter APIs based on output from the Gemini API.
* [`form_app`] - A sample demonstrating different types of forms and best practices.
* [`google_maps`] - Demonstrates the Google Maps for Flutter plugin.
* [`navigation_and_routing`] - A sample that shows how to use [go_router] API to handle common navigation scenarios.
* [`pedometer`] - A demo of a plugin that leverages FFIgen & JNIgen to call platform APIs directly from Dart code.
* [`platform_design`] - This sample project shows a Flutter app that maximizes application code reuse while adhering to different design patterns on Android and iOS.
* [`simple_sdf`] - A simple [Flutter fragment shaders] sample project showing how to draw Signed Distance Functions with the FragmentShader API.
* [`simple_shader`] - A simple [Flutter fragment shaders] sample project.
* [`testing_app`] - A sample app that shows different types of testing in Flutter.
* [`web_embedding`] - This directory contains examples of how to embed Flutter in web apps (without iframes).
  * [`element_embedding_demo`] - Modifies the index.html of a flutter app so it is launched in a custom hostElement. This is the most basic embedding example.
  * [`ng-flutter`] - A simple Angular app (and component) that replicates the above example, but in an Angular style.

### Native platform samples

* [`add-to-app`] - Collection of samples that demonstrate embedding Flutter a view into a native app.
  * [`fullscreen`] — Embeds a full screen instance of
  Flutter into an existing iOS or Android app.
  * [`prebuilt_module`] — Embeds a full screen
  instance of Flutter as a prebuilt library that can be loaded into an existing
  iOS or Android app.
  * [`plugin`] — Embeds a full screen Flutter instance that
  is using plugins into an existing iOS or Android app.
  * [`books`] — Mimics a real world use-case of embedding Flutter into an
  existing Android app and demonstrates using [Pigeon] to communicate between Flutter and
  the host application.
  * [`multiple_flutters`] — Shows the usage of the Flutter
  Engine Group APIs to embed multiple instances of Flutter into an existing app
  with low memory cost.
  * [`android_view`] — Shows how to integrate a Flutter
  add-to-app module at a view level for Android.
* [`android_splash_screen`]
* [`ios_app_clip`]
* [`platform_channels`] - A sample app which demonstrates how to use MethodChannel, EventChannel, BasicMessageChannel and MessageCodec in Flutter.
* [`platform_view_swift`] - A Flutter sample app that combines a native iOS UIViewController with a full-screen Flutter view.

### Demo galleries

* [`animations`] - Showcases Flutter's animation features
* [`material_3_demo`] - showcases [Material 3] features in the Flutter Material library.

### Demo apps

* [`compass_app`] - A sample application that implements MVVM architecture.
* [`veggie_seasons`] - A demo application.

## Flutter sample code

Samples are **correct and concise code** that developers
can **quickly understand** and **easily reuse** with minimal side effects.
Samples teach developers how to be successful using Flutter and Dart.
They are maintained on an ongoing basis
to reflect changing APIs and best practices.

### Types of samples

There are two types of sample code in this repository:

* **Quickstarts** provide a starting point to extend. They answer the question,
  "What is the minimal amount of code needed to implement this feature?"
* **Demo apps** are meant to be built and ran. They demo the _product_,
   not how to write code.

A majority of samples in this repository are quickstarts.

## Usage

Every sample in this repo is fully runnable. To run an example,
use `flutter run` inside that example's directory.
See the [getting started guide] to install the `flutter` tool.

> [!IMPORTANT]
> If you want to run an add-to-app sample, there are additional requirements.
> We suggest reading the [add-to-app documentation].

## Interested in contributing?

See the [contributor's guide]!

## Questions or issues?

If you have a general question about one of these samples or how to adapt its
techniques for one of your own apps, try one of these resources:

* [The FlutterDev Discord]
* [The Flutter Community forum]

If you run into a bug in one of the samples, please file an issue in the
[`flutter/samples` issue tracker].


[`asset_transformation`]: ./asset_transformation
[`background_isolate_channels`]: ./background_isolate_channels
[`cupertino_gallery`]: ./cupertino_gallery
[`date_planner`]: ./date_planner
[`desktop_photo_search`]: ./desktop_photo_search
[`dynamic_theme`]: ./dynamic_theme
[`form_app`]: ./form_app
[`google_maps`]: ./google_maps
[`navigation_and_routing`]: ./navigation_and_routing
[`pedometer`]: ./pedometer
[`platform_design`]: ./platform_design
[`simple_sdf`]: ./simple_sdf
[`simple_shader`]: ./simple_shader
[`testing_app`]: ./testing_app
[`web_embedding`]: ./web_embedding
[`element_embedding_demo`]: ./web_embedding/element_embedding_demo
[`ng-flutter`]: ./web_embedding/ng-flutter
[`add-to-app`]: ./add_to_app
[`fullscreen`]: ./add_to_app/fullscreen
[`prebuilt_module`]: ./add_to_app/prebuilt_module
[`plugin`]: ./add_to_app/plugin
[`books`]: ./add_to_app/books
[`multiple_flutters`]: ./add_to_app/multiple_flutters
[`android_view`]: ./add_to_app/android_view
[`android_splash_screen`]: ./android_splash_screen
[`ios_app_clip`]: ./ios_app_clip
[`platform_channels`]: ./platform_channels
[`platform_view_swift`]: ./platform_view_swift
[`animations`]: ./animations
[`material_3_demo`]: ./material_3_demo
[`compass_app`]: ./compass_app
[`veggie_seasons`]: ./veggieseasons

[Flutter]: https://flutter.dev
[getting started guide]: https://docs.flutter.dev/get-started/install
[add-to-app documentation]: https://docs.flutter.dev/add-to-app
[isolates]: https://api.dart.dev/dart-isolate/Isolate-class.html
[Material 3]: https://m3.material.io
[go_router]: https://pub.dev/packages/go_router
[google_maps_flutter plugin]: https://github.com/flutter/plugins/tree/master/packages/google_maps_flutter
[package:provider]: https://pub.dev/packages/provider
[Flutter fragment shaders]: https://docs.flutter.dev/development/ui/advanced/shaders
[TextEditingDeltas]: https://api.flutter.dev/flutter/services/TextEditingDelta-class.html
[Pigeon]: https://pub.dev/packages/pigeon
[`package:shelf`]: https://pub.dev/packages/shelf
[svn]: https://subversion.apache.org/
[partial clone]: https://github.blog/2020-12-21-get-up-to-speed-with-partial-clone-and-shallow-clone/
[contributor's guide]: CONTRIBUTING.md
[The FlutterDev Discord]: https://discord.gg/rflutterdev
[The Flutter Community forum]: https://forum.itsallwidgets.com/latest
[`flutter/samples` issue tracker]: https://github.com/flutter/samples/issues
[flutter/demos]: https://github.com/flutter/demos
