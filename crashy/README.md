# Crashy

A Flutter app that crashes intentionally in various ways. It demonstrates how
to capture errors and report them to a crash analytics backend. This example
uses Sentry.io, but you can use your own. The principles used to capture
errors are applicable to other ways of reporting errors.

## Building the app

In order to function as expected (and crash as expected!), this app needs a
DSN issued by Sentry.io. You can get one at https://docs.sentry.io/quickstart/#configure-the-dsn.

Once you have the DSN, create an empty file `lib/dsn.dart` and provide your
DSN as follows:

```dart
const String dsn = 'YOUR_DSN_HERE';
```

This file is imported from `lib/main.dart`, which uses the DSN constant to
configure the Sentry client.

## Found a bug?

Please, report bugs at https://github.com/flutter/flutter/issues/new
