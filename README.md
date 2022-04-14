# Flutter samples

[![Build Status](https://github.com/flutter/samples/workflows/Master%20Branch%20CI/badge.svg)](https://github.com/flutter/samples/actions?workflow=Master%20Branch%20CI)

A collection of open source samples that illustrate best practices for
[Flutter](https://flutter.dev).

## Visual samples index

The easiest way to browse through the samples in this repo (as well as a few others!)
is the [visual samples index](https://flutter.github.io/samples).

## Tip: minimize download size

As this repository is quite big, you can use svn to download a single example.
For example:

```
svn co https://github.com/flutter/samples/trunk/provider_shopper
```

You can also use a
[partial clone](https://github.blog/2020-12-21-get-up-to-speed-with-partial-clone-and-shallow-clone/)
to skip blob objects that aren't currently checked out,
while including the full commit history:

```
git clone --filter=blob:none https://github.com/flutter/samples.git
```

## Interested in contributing?

See the [contributor's guide](CONTRIBUTING.md)!

## Questions or issues?

If you have a general question about one of these samples or how to adapt its
techniques for one of your own apps, try one of these resources:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into a bug in one of the samples, please file an issue in the
[`flutter/samples` issue tracker](https://github.com/flutter/samples/issues).
