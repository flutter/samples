# Flutter Maps Firestore

This is the sample app that we built on stage at 
[Cloud Next '19 in San Francisco](https://cloud.withgoogle.com/next/sf/).

## Getting Started

First up, if you haven't watched the 
[video from Cloud Next '19](https://www.youtube.com/watch?v=RpQLFAFqMlw), take a 
couple of minutes to watch it through. The live coding starts at about 17:40.

This repository contains the final state of the app built in that live coding session,
with the minor issue that you need to go get new API Keys and the like.

First, follow the steps outlined in the 
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

Next, you need to add a Google Maps SDK for iOS API key to `ios/Runner/AppDelegate.m`.
This enables the Google Map to render. You will also need to add a Google Maps 
Web Services API key to `lib/api_key.dart`. 

To reiterate the warning that I gave during the talk, do not put Web Service API keys 
in your production binary. You need to build a proxy service to serve 
pre-authenticated content to your mobile applications so you can change API keys as 
required. We only did this to make it easy to demonstrate on stage.