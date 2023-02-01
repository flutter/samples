# FFIgen + JNIgen pedometer

This is a demo for some of our tooling around calling platform APIs directly from dart code. This repository represents a demo of a plugin that leverages FFIgen & JNIgen. There is also an example pedometer app that uses the bindings generated from these tools. 

- [FFIgen](https://pub.dev/packages/ffigen) is used to generate bindings for C, Objective-C and Swift APIs
- [JNIgen](https://pub.dev/packages/jnigen) is used to generate bindings for Jave and Kotlin APIs

**These tools are both experimental and are currently a work in progress.** If you find any issues or have feedback, please file it on the corresponding Github repositories. 


## Re-generating bindings
The bindings that allow the dart code to call the platform code have already been generated [here](/lib). You can regenerate them by following the steps below. 

### FFIgen 
Configuration for FFIgen is [here](/ffigen.yaml) for the [CoreMotion](https://developer.apple.com/documentation/coremotion) framework. FFIgen currently does not support autogenerating the code to handle callbacks. So, there were a few steps needed to appropriately handle callbacks in Objective-C. You can [read more here](https://dart.dev/guides/libraries/objective-c-interop#callbacks-and-multithreading-limitations).

`dart run ffigen --config ffigen.yaml`

### JNIgen
Configuration for JNIgen is [here](/jnigen.yaml) for the [HealthConnect API](https://developer.android.com/guide/health-and-fitness/health-connect). Right now, JNIgen requires an Android folder to generate the bindings so there are a few steps to regenerate:

1. `flutter create .`  
2. `flutter build apk`
3. `dart run jnigen --config jnigen.yaml`
4. delete the android folder


## Running the example app
Note that step counting is only available on physical devices. 

### iOS
- `flutter run`
- Allow *pedometer* app access to step counting

### Android
- Make sure that Google Fit is installed (to ensure that steps are being counted)
- `flutter run`
- Install Health Connect and grant access to Google Fit and the *jni_demo* app


## Project stucture

* `src`: Contains the native source code, and a CmakeFile.txt file for building
  that source code into a dynamic library.

* `lib`: Contains the Dart code that defines the API of the plugin, and which
  calls into the native code using `dart:ffi`.

* platform folders (`ios` etc.): Contains the build files
  for building and bundling the native code library with the platform application.

* `example`: Contains the native source code, and a CmakeFile.txt file for building
  that source code into a dynamic library.



