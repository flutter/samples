# Isolate Example

A sample application that demonstrate best practices when using [`isolates`](https://api.dartlang.org/stable/2.3.1/dart-isolate/Isolate-class.html).

## Goals

* Display the performance benefits of isolates when using them in the right situation.
* Show how to use the `compute` method for straightforward computations.
* Demonstrate how to initialize and use an isolate.
* Show the cost of moving data between isolates and provide alternatives.

## The important bits

### `page_one.dart`

Compares running a large computation on the main isolate with running the same calculation
on a second isolate. When the main isolate is used, Flutter is unable to render new frames, and
the `SmoothAnimationWidget`'s animation freezes.
### `page_two.dart`

Creates an isolate used to run an infinite loop that sums batches of 100M randomly generated
numbers at a time. Users can start, terminate, pause, and resume the isolate, as well as modify
how the calculation is performed.

### `page_three.dart`

Demonstrates how expensive it is to move large amounts of data between isolates and a 
better alternative to move data. This page creates an isolate that can add up a list of numbers
and gives users three options for how to provide it with input:

* Send values normally using a List
* Send the values using TransferableTypedData
* Generate the values on the second isolate, so no copying is necessary

Users can then compare the performance of each approach using the displayed timestamps.

## Questions/issues

If you have a general question about any of the techniques you see in
the sample, the best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).
