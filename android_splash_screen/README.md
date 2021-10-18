# Splash Screen Sample

A Flutter app that exemplifies how to implement an animated splash screen for Android devices running at least Android 12, the version that supplies the new [SplashScreen API](https://developer.android.com/about/versions/12/features/splash-screen).

**NOTE:** There is a pub package available to implement static splash screens in your Flutter app: [flutter_native_splash](https://pub.dev/packages/flutter_native_splash).

## Goals
- Demonstrate the compatibility of animated splash screens and Flutter apps running on Android
- Demonstrate the smoothness achievable by a splash screen as a transition to the Flutter UI

## The important bits

### Remove deprecated code

When creating a Flutter app, the Android code generated may include the deprecated implementation of a splash screen. This includes a definition of `io.flutter.embedding.android.SplashScreenDrawable` in the ` /android/app/src/main/AndroidManifest.xml` file and an implementation of `provideSplashScreen()` in the `/android/app/src/main/kotlin/MainActivity.kt` file. Make sure to remove this code.

**NOTE:** This should no longer be a concern as of Flutter 2.5.

### Modify Android build files
In order to support the Android 12 SplashScreen API, you need to:
1. Update the Android `compileSdkVersion` to 31 in the `/android/app/build.gradle` file, and
2. Update the `ext.kotlin_version` to the latest Kotlin extension version (1.5.31 at the time of publication) in the `/android/build.gradle` file.

### Timing the splash screen animation
In order to ensure a smooth transition between the animated splash screen and the Flutter UI displaying for the first time, be sure to handle both the case where the Flutter UI is ready to be displayed before the animation finishes and vice versa. This can be done by overriding `onFlutterUiDisplayed()` and `onFlutterUiNoLongerDisplayed()` in `/android/app/src/main/kotlin/com/example/splash-screen-sample/MainActivity.kt`, the implementation of `FlutterActivity` in this project.

## Questions/Issues

If you have a general question about splash screens or their implementation in Flutter, the best places to go are:

* [Android 12 Splash Screen Documentation](https://developer.android.com/about/versions/12/features/splash-screen)
* [Flutter Guidance on Adding a Splash Screen to Your App](https://flutter.dev/docs/development/ui/advanced/splash-screen?tab=android-splash-alignment-kotlin-tab)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
