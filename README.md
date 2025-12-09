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
* [`code_sharing`] - Demonstrates how to share business logic between Flutter client and Dart server using [`package:shelf`] )
* [`context_menus`] - This sample shows how to create and customize cross-platform context menus, such as the text selection toolbar on mobile or the right click menu on desktop.
* [`desktop_photo_search`] - Demonstrates desktop features in both Material and FluentUI design systems.
* [`dynamic_theme`] - A developer sample demonstrating how to call on-device Flutter APIs based on output from the Gemini API.
* [`form_app`] - A sample demonstrating different types of forms and best practices.
* [`game_template`] - (**note: deprecated!**) A starter game in Flutter with all the bells and whistles of a mobile (iOS & Android) game.
* [`gemini_tasks`] - A developer sample written in Flutter demonstrating how to interact with a to-do list in natural language using the Gemini API.
* [`google_maps`] - Demonstrates the Google Maps for Flutter plugin.
* [`infinite_list`] - A Flutter sample app that shows an implementation of the "infinite list" UX pattern.
* [`isolate_example`] - A sample application that demonstrate best practices when using [isolates].
* [`navigation_and_routing`] - A sample that shows how to use [go_router] API to handle common navigation scenarios.
* [`place_tracker`] - A sample place tracking app that uses the [google_maps_flutter plugin].
* [`platform_design`] - This sample project shows a Flutter app that maximizes application code reuse while adhering to different design patterns on Android and iOS.
* [`provider_counter`] - The starter Flutter application, but using [package:provider] to manage state.
* [`provider_shopper`] - A Flutter sample app that shows a state management approach using [package:provider].
* [`simple_shader`] - A simple [Flutter fragment shaders] sample project.
* [`simplistic_calculator`] - A calculator to demonstrate a simple start for a desktop Flutter app.
* [`simplistic_editor`] - This sample text editor showcases the use of [TextEditingDeltas] and a DeltaTextInputClient to expand and contract styled ranges of text.
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
* [`deeplink_store_example`] - A demo app that implements deep-linking with go_router.
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
[`code_sharing`]: ./code_sharing
[`context_menus`]: ./context_menus
[`desktop_photo_search`]: ./desktop_photo_search
[`dynamic_theme`]: ./dynamic_theme
[`form_app`]: ./form_app
[`game_template`]: ./game_template
[`gemini_tasks`]: ./gemini_tasks
[`google_maps`]: ./google_maps
[`infinite_list`]: ./infinite_list
[`isolate_example`]: ./isolate_example
[`navigation_and_routing`]: ./navigation_and_routing
[`place_tracker`]: ./place_tracker
[`platform_design`]: ./platform_design
[`provider_counter`]: ./provider_counter
[`provider_shopper`]: ./provider_shopper
[`simple_shader`]: ./simple_shader
[`simplistic_calculator`]: ./simplistic_calculator
[`simplistic_editor`]: ./simplistic_editor
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
[`deeplink_store_example`]: ./deeplink_store_example
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
