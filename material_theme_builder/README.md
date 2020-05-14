# Build a Material Theme

Build a Material Theme lets you create your own Material theme by customizing values for color, typography, and shape. See how these values are applied to Material components and discover how to implement your custom theme in your own projects.

This project is a starting point for building a Material Theme with Flutter. Learn how to customize Material in this talk [Material Theming with Flutter](https://youtu.be/stoJpMeS5aY).

## Goals
* Show how to apply themed typography, colors, and shapes to MaterialApps.
* Allow creation of your own theme to see how it's applied to MaterialApps.
* Demonstrate the `google_fonts` package.

## The important bits

### `main.dart`

Defines a `ColorScheme` that maps colors to semantic names. These are automatically applied to Material components and can be called manually in custom code.

Defines a `TextTheme` that maps `TextStyles` (fonts, weights, pointsizes) to semantic names of a typography scale. These are automatically applied to Material components and can be called manually in custom code.

Defines a `ThemeData` and passes it to the `MaterialApp`. This data type encapsulates all the values automatically assigned to all Material components and some other widgets in `MaterialApp`s. What we're using is just a subset of the dozens of fields available.

Inside the `ThemeData` constructor, notice instances of `RoundedRectangleBorder` that are used to define corner shapes for components.

The `Home` widget creates the `Scaffold` whose body is a `ListView` full of widgets. These are the UI you see in the app. 

The `Header` widget is a helper for returning `overline` styled text.

## Questions/issues

If you have a general question about any of the techniques you see in
the sample, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

To learn more about Material Theming, see:

- [Material Theming](https://material.io/design/material-theming/): Material Theming refers to the customization of your Material Design app to better reflect your product’s brand
- [Color palette generator](https://material.io/design/color/the-color-system.html#tools-for-picking-colors): Pick any color to generate a palette that’s usable and beautiful
- [Shape customization tool](https://material.io/design/shape/about-shape.html#shape-customization-tool): Visualize the look of different shapes for small, medium, and large Material Components
- [Official Google Fonts package for Flutter](https://pub.dev/packages/google_fonts): The `google_fonts` package for Flutter allows you to easily use [Google Fonts](https://fonts.google.com/) in your Flutter app
- [Material Components widgets](https://flutter.dev/docs/development/ui/widgets/material): Visual, behavioral, and motion-rich Flutter widgets implementing the Material Design guidelines
- [ThemeData class](https://api.flutter.dev/flutter/material/ThemeData-class.html): Holds the color and typography values for a Material Theme

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).