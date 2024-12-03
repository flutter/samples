# Flutter samples

[![Build Status](https://github.com/flutter/samples/workflows/Main%20Branch%20CI/badge.svg)](https://github.com/flutter/samples/actions?workflow=Main%20Branch%20CI)

A collection of open source samples that illustrate best practices for
[Flutter](https://flutter.dev).

## Index

### Quickstarts

* [`asset_transformation`][]
* [`background_isolate_channels`][]
* [`code_sharing`][]
* [`context_menus`][]
* [`desktop_photo_search`][]
* [`dynamic_theme`][]
* [`form_app`][]
* [`game_template`][]
* [`gemini_tasks`][]
* [`google_maps`][]
* [`infinite_list`][]
* [`isolate_example`][]
* [`navigation_and_routing`][]
* [`platform_design`][]
* [`provider_counter`][]
* [`provider_shopper`][]
* [`simple_shader`][]
* [`simplistic_calculator`][]
* [`simplistic_editor`][]
* [`testing_app`][]
* [`web_embedding`][]

### Native platform samples

* [`add-to-app`][] - Collection of samples that demonstrate embedding Flutter a view into a native app.
  * [`fullscreen`][] — Embeds a full screen instance of
  Flutter into an existing iOS or Android app.
  * [`prebuilt_module`][] — Embeds a full screen
  instance of Flutter as a prebuilt library that can be loaded into an existing
  iOS or Android app.
  * [`plugin`][] — Embeds a full screen Flutter instance that
  is using plugins into an existing iOS or Android app.
  * [`books`][] — Mimics a real world use-case of embedding Flutter into an
  existing Android app and demonstrates using
  [Pigeon](https://pub.dev/packages/pigeon) to communicate between Flutter and
  the host application.
  * [`multiple_flutters`][] — Shows the usage of the Flutter
  Engine Group APIs to embed multiple instances of Flutter into an existing app
  with low memory cost.
  * [`android_view`][] — Shows how to integrate a Flutter
  add-to-app module at a view level for Android.
* [`android_splash_screen`][]
* [`ios_app_clip`][]
* [`platform_channels`][]
* [`platform_view_swift`][]

### Demo galleries

* [`animations`][] - Showcases Flutter's animation features
* [`material_3_demo`][] -

### Demo apps

* [`compass_app`][]
* [`deeplink_store_example`][]
* [`veggie_seasons`][]

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
[`platform_design`]: ./platform_design
[`provider_counter`]: ./provider_counter
[`provider_shopper`]: ./provider_shopper
[`simple_shader`]: ./simple_shader
[`simplistic_calculator`]: ./simplistic_calculator
[`simplistic_editor`]: ./simplistic_editor
[`testing_app`]: ./testing_app
[`web_embedding`]: ./web_embedding
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
See the [getting started guide](https://docs.flutter.dev/get-started/install) 
to install the `flutter` tool.

> [!IMPORTANT]  
> If you want to run an add-to-app sample, there are additional requirements.
> We suggest reading the [add-to-app documentation](https://docs.flutter.dev/add-to-app).

### Tip: minimize download size

As this repository is quite big, you can use 
[svn](https://subversion.apache.org/) to download a single example.
For example:

```
svn co https://github.com/flutter/samples/trunk/provider_shopper
```

You can also use a
[partial clone](https://github.blog/2020-12-21-get-up-to-speed-with-partial-clone-and-shallow-clone/)
to skip blob objects that aren't currently checked out,
while including the full commit history:

```
git clone --filter=blob:none https://github.com/flutter/samples.git
```

## Interested in contributing?

See the [contributor's guide](CONTRIBUTING.md)!

## Questions or issues?

If you have a general question about one of these samples or how to adapt its
techniques for one of your own apps, try one of these resources:

* [The FlutterDev Discord](https://discord.gg/rflutterdev)
* [The Flutter Community forum](https://forum.itsallwidgets.com/latest)

If you run into a bug in one of the samples, please file an issue in the
[`flutter/samples` issue tracker](https://github.com/flutter/samples/issues).

