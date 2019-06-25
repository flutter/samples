# Flutter Maps Firestore

A Flutter sample app that shows the end product of the Cloud Next '19 talk 
[Build Mobile Apps With Flutter and Google Maps](https://www.youtube.com/watch?v=RpQLFAFqMlw).
The live coding starts at about 17:40.

## Goals for this sample

* Showcase how to build an app that uses Google Maps with Flutter:
    * Loading a list of Ice Cream shops from Cloud Firestore
    * Listing the shops in a custom carousel
    * Showing the shop locations on a map using Markers
    * Controlling the Google Map from the carousel

## The important bits

### Cloud Firestore

To set up Cloud Firestore connectivity, follow the steps outlined in the 
[Cloud Firestore package setup section](https://pub.dev/packages/cloud_firestore#setup).

Next, you need to populate your Cloud Firestore with a collection named `ice_cream_stores`,
structured a bit like this:

```
ice_cream_stores:
  ChIJ70taCKKAhYAR5IMmYwQT4Ts:
    placeId: ChIJ70taCKKAhYAR5IMmYwQT4Ts
    address: 432 Octavia St #1a, San Francisco, CA 94102, USA
    location: 37.7763629, -122.4241918
    name: Smitten Ice Cream
```

The collection name is referenced from `_HomePageState`'s `initState` method. The 
`placeId`, `address`, `location` and `name` are used at various points in the widget
tree to render appropriate data.

### Google Maps

You need to add a Google Maps SDK for iOS API key to `ios/Runner/AppDelegate.m`.
This enables the Google Map to render. You will also need to add a Google Maps 
Web Services API key to `lib/api_key.dart`.

To reiterate the warning that we gave during the talk, do not put Web Service API keys 
in your production binary. You need to build a proxy service to serve 
pre-authenticated content to your mobile applications so you can change API keys as 
required. We only did this to make it easy to demonstrate on stage.

## Questions/issues

If you have a general question about building with Google Maps in Flutter, the
best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).

