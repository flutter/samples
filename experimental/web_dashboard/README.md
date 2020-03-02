# web_dashboard

(In progress) A dashboard app for the web, built with Flutter.

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
