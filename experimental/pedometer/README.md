# FFIgen + JNIgen pedometer

This is a demo for some of our tooling around
calling platform APIs directly from dart code. 
This repository represents a demo of a plugin that leverages FFIgen & JNIgen. 
There is also an example pedometer app that 
uses the bindings generated from these tools. 

- [FFIgen](https://pub.dev/packages/ffigen) is used to generate
  bindings for C, Objective-C and Swift APIs.
- [JNIgen](https://pub.dev/packages/jnigen) is used to generate
  bindings for Java and Kotlin APIs.

**These tools are both experimental and are currently a work in progress.**
If you find any issues or have feedback, 
please file it on the corresponding GitHub repositories.

## Re-generating bindings

The bindings that allow the Dart code to call the platform code have
already been generated in the [`\lib` folder](./lib). 
You can regenerate them by following the steps below:

### FFIgen 

Configuration of FFIgen for the
[CoreMotion framework](https://developer.apple.com/documentation/coremotion)
is in the [`ffigen.yaml` file](./ffigen.yaml).
FFIgen currently does not support autogenerating code to handle callbacks. 
So, there are a few extra steps needed to
appropriately handle callbacks in Objective-C.
You can read more about this limitation on
[dart.dev](https://dart.dev/interop/objective-c-interop#callbacks-and-multithreading-limitations).

```bash
dart run ffigen --config ffigen.yaml
```


### JNIgen

Configuration of JNIgen for the
[HealthConnect API](https://developer.android.com/guide/health-and-fitness/health-connect)
is in the [`jnigen.yaml` file](./jnigen.yaml).

1. Build an Android APK file from the example app.
   Currently, JNIgen requires at least one APK build
   to obtain the classpaths of Android Gradle libraries.

   ```bash
   cd example && flutter build apk
   ```

2. Return to the `/pedometer` directory and run `jnigen`:

   ```bash
   cd .. && dart run jnigen --config jnigen.yaml
   ```

## Running the example app

The example app is located in the [`/example`](./example) directory,
and the following commands assume they are being run from that location.

Note that step counting is only available on physical devices. 

### iOS

- Run `flutter run` and choose your physical device.
- Allow the *pedometer* app access to step counting.

### Android

- Make sure that [Google Fit](https://play.google.com/store/apps/details?id=com.google.android.apps.fitness)
  is installed (to ensure that steps are being counted).
- Run `flutter run` and choose your physical device.
- Install [Health Connect](https://play.google.com/store/apps/details?id=com.google.android.apps.healthdata) 
  and grant access to Google Fit and the *jni_demo* app.


## Project structure

* `src`: Contains the native source code, and a `CMakeLists.txt` file for
  building that source code into a dynamic library.

* `lib`: Contains the Dart code that defines the API of the plugin and
  calls into the native code using `dart:ffi`.

* platform folders (`ios` etc.): Contain the build files for
  building and bundling the native code library with the platform application.

* `example`: Contains the native source code for building
  that source code into a dynamic library.
