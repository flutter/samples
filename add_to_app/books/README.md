# books

Mimics a real world use-case of embedding Flutter into an existing Android app
and demonstrates using [Pigeon](https://pub.dev/packages/pigeon) to communicate
between Fluter and the host application.

## Description

These apps integrate the `flutter_books` module using the simpler build-together
project setup. They simulate a mock scenario where an existing book catalog
list app already exists. Flutter is used to implement an additional book details
page.

* Similar to [`fullscreen`](../fullscreen).
* An existing books catalog app is already implemented in Kotlin and Swift.
* The platform-side app has existing middleware constraints that should also
  be the middleware foundation for the additional Flutter screen.
  * On Android, the Kotlin app already uses GSON and OkHttp for networking and
    references the Google Books API as a data source. These same libraries also
    underpin the data fetched and shown in the Flutter screen.
  * On iOS, the Swift app does a similar fetch and parse of the Google Books API
    using iOS's built-in libraries.
* The platform application interfaces with the Flutter book details page using
  idiomatic platform API conventions rather than Flutter conventions.
  * On Android, the Flutter activity receives the book to show via activity
    intent and returns the edited book by setting the result intent on the
    activity. No Flutter concepts are leaked into the consumer activity.
  * On iOS, Storyboards are used to design the presentation of the books, just
    as one might do in a full UIKit app.
* The [pigeon](https://pub.dev/packages/pigeon) plugin is used to generate
  interop APIs and data classes. The same `Book` model class is used within the
  Kotlin/Swift program, the Dart program and in the interop between Kotlin/Swift
  and Dart. No manual platform channel plumbing needed for interop.
  * The `api.dart/java/mm` files generated from the
    `flutter_module_books/pigeon/schema.dart` file are checked into source
    control. Therefore `pigeon` is only a dev dependency with no runtime
    requirements.
  * If the `schema.dart` is modified, the generated classes can be updated with

      ```bash
      flutter pub run pigeon --input pigeon/schema.dart \
        --dart_out lib/api.dart \
        --objc_header_out ../ios_books/IosBooks/api.h \
        --objc_source_out ../ios_books/IosBooks/api.m \
        --objc_prefix BK \
        --java_out ../android_books/app/src/main/java/dev/flutter/example/books/Api.java \
        --java_package "dev.flutter.example.books"
      ```

      in the `flutter_module_books` directory.

Once you've understood the basics of add-to-app with `android_fullscreen` and
`ios_fullscreen`, this is a good sample to demonstrate how to integrate Flutter
in a slightly more realistic setting with existing business logic.

## tl;dr

If you're just looking to get up and running quickly, these bash commands will
fetch packages and set up dependencies (note that the above commands assume
you're building for both iOS and Android, with both toolchains installed):

```bash
  #!/bin/bash
  set -e

  cd flutter_module_books/
  flutter pub get

  # For Android builds:
  open -a "Android Studio" ../android_books # macOS only
  # Or open the ../android_books folder in Android Studio for other platforms.

  # For iOS builds:
  cd ../ios_books
  pod install
  open ios_books/IosBooks.xcworkspace
```

## Requirements

* Flutter
* Android Studio
* Cocoapods (iOS)

## Questions/issues

See [add_to_app/README.md](../README.md) for further help.
