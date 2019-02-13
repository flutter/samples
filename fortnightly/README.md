# Fortnightly

A Flutter sample app based on the Material study Fortnightly (a hypothetical, online newspaper.) It showcases
print-quality, custom typography, Material Theming, and text-heavy UI design and layout.

For info on the Fortnightly Material Study, see: https://material.io/design/material-studies/fortnightly.html

## Goals for this sample

* Help you understand how to customize and layout text.
* Provide you with example code for
  * Text
  * A short app bar (the menu button top left.)
  * Avatar images

## Widgets / APIs

* BeveledRectangleBorder
* BoxConstraints on Container
* CircleAvatar
* ExactAssetImage
* Fonts
* SafeArea
* Stack
* SingleChildScrollView
* Text
* TextStyle
* TextTheme

## The important bits

### pubspec.yaml

This file is found in every Flutter project. It's where you define your dependencies including static assets.

#### Notice

* It has `assets` and `fonts` sections. The formatting of .yaml files is particular. Be sure yours has similar indents
to this example.

### main.dart

The Flutter code that builds the UI.

#### Notice

* Theming is passed as a parameter in the constructor of `MaterialApp` (`theme:`).
* `debugShowCheckedModeBanner` is set to `false` so you can examine the entire screen as if it were a production app.
* `SafeArea` is the first widget in the `Scaffold`'s body. This corrects layout on screens with notches and virtual
    home buttons (like iPhone X+).
* The entire newspaper article is wrapped in a `SingleChildScrollView` widget which allows it to scroll instead of
    overflowing.
* The `Text` widget with text ' ¬ ' has a `TextStyle` that changes one parameter of an inherited `TextStyle` using
    `.apply().
* The `Text` widget with text 'Connor Eghan' has a `TextStyle` created explicitly instead of inheriting from theming.
* You can break up long strings in your source files by putting them on multiple lines.
* Fonts are imported with multiple files expressing their weights (Bold, Light, Medium, Regular) but are accessed by a
    `FontWeight` widget by number like 'FontWeight.w800' for Merriweather-Bold.ttf.

## Questions/issues

If you have a general question about JSON serialization in Flutter, the
best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [Flutter samples repo](https://github.com/flutter/samples/issues).
