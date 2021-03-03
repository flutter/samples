# Null safety Flutter example

This folder contains a demonstration of Dart's sound null
safety feature. For additional information about this feature, see
https://dart.dev/null-safety.

The folder contains two sample Flutter apps:

  * `null_unsafe_app`: This contains a small weather app, which has three null
    errors in its rendering code as a result of not using null safety.
    
    Try running the app (`flutter run` in a terminal, or the Run action in
    VSCode/Android Studio), and see if the UI works. The null errors are
    sporadic, so try hot reloading a bunch of times and experience the app
    sometimes working and sometimes failing.

  * `null_safe_app`: This contains the same weather app, but this time using
    null safety. There are two copies of the source code:

    `lib/badapp.dart`: This is the same source code as in the unsafe app. Try
    uncommenting the two commented lines of null-unsafe code, and notice how the
    Dart analyzer with null safety immediately flags the lines as unsafe.

    `lib/goodapp.dart`: This a safe version of the unsafe app, with the null
    errors fixed. Read through the comments to see illustrations of how to resolve
    null errors with null safety.

## Running the example code

This sample requires Flutter 2.0 or later.
