# Place Tracker

A sample place tracking app that uses the [google_maps_flutter](https://github.com/flutter/plugins/tree/master/packages/google_maps_flutter) plugin. 
Keep track of your favorite places, places you've visited, and places you want to go. View details
about these places, show them on a map, and get directions to them.

**This sample is not currently in a finished state. We're in the process
of building it out. This sample currently only works on Android (see Caveat below).**

## Goals

* Learn how to create an interface composed of GoogleMap and other widgets.
* Learn how to show, control, and modify a GoogleMap widget.
* Learn how to place a marker on a map.

## The important bits

### `place_map.dart`

This page shows a full-screen GoogleMap widget with place markers. Provides examples of how
to stack other widgets on top of a GoogleMap widget, how to add markers to a map, and how to make
other flutter widgets interact with the GoogleMap widget.

### `place_details.dart`

This page shows a detailed view of a single place. Provides examples of how to place a
GoogleMap widget inside of a ListView and how to disable certain touch gestures on the map.

## Getting Started

To run this sample app, you will need an API key.

Get an API key at <https://cloud.google.com/maps-platform/>.

Specify your API key in the application manifest `android/app/src/main/AndroidManifest.xml`:

```xml
<manifest ...
  <application ...
    <meta-data android:name="com.google.android.geo.API_KEY"
               android:value="YOUR KEY HERE"/>
```

For additional help setting up the plugin, see the plugin's [README](https://github.com/flutter/plugins/tree/master/packages/google_maps_flutter) page.

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).

## Caveat

The google_maps_flutter plugin provides an *unpublished preview* of the Flutter API for Google Maps:
* Dart APIs for controlling and interacting with a GoogleMap view from Flutter
  code are still being consolidated and expanded. The intention is to grow
  current coverage into a complete offering. Issues and pull requests aimed to
  help us prioritize and speed up this effort are very welcome.
* Currently the plugin only supports Android as it embeds a platform view in the
  Flutter hierarchy which is currently only supported for Android ([tracking
  issue](https://github.com/flutter/flutter/issues/19030)).

## Questions/issues

If you have a general question about any of the techniques you see in
the sample, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
