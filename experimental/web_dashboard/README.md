# web_dashboard

**In progress** 

A dashboard app that displays daily entries.

1. How to use an AdaptiveScaffold adaptive layout for large, medium, and small
screens.
2. How to use Firebase [Cloud
Firestore](https://firebase.google.com/docs/firestore) database with Google
Sign-In.
3. How to use [charts](https://pub.dev/packages/charts_flutter) to display
data. 
4. (in progress) How to set up routing for a web app

This app is web-first, and isn't guaranteed to run on iOS, Android or desktop
platforms.

## Running

Normal mode (DDC):

```
flutter run -d chrome
```

Skia / CanvasKit mode:

```
flutter run -d chrome --release --dart-define=FLUTTER_WEB_USE_SKIA=true
```

