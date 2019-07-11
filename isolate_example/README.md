# Isolate Example

A sample application that demonstrate best practices when using [`isolates`](https://api.dartlang.org/stable/2.3.1/dart-isolate/Isolate-class.html).

## Goals

* Display the performance benefits of isolates when using them in the right situation.
* Show how to use the `compute` method for straightforward computations.
* Demonstrate how to initialize and use an isolate.
* Show the cost of moving data between isolates and provide alternatives.

## The important bits

### `page_one.dart`

Compares running a large computation on the main isolate with running the same calculation on a second isolate.
When the main isolate is used, Flutter is unable to render new frames, and the `SmoothAnimationWidget`'s animation freezes.
### `page_two.dart`

Creates an isolate used to compute an infinate loop of sum of 100M randomly generated numbers while reporting progress. 
Users can start, terminate, pause, and resume the isolate, as well as modify how the calculation is performed.

### `page_three.dart`

Demonstration how expensive it is to move large amounts of data between isolates and 
an alternative using transferableTypeData. You can create large amounts of randomly generated
numbers on the main isolate to send to the secondary isolate to be summated, simply
generating the number on the second isolate, or transfer the data using transferableTypeData.

## Questions/issues

If you have a general question about any of the techniques you see in
the sample, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
