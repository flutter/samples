# testing_app

A Sample app that shows different types of testing in Flutter.

This particular sample uses the [Provider][] package but any other state management approach
would do.

[provider]: https://pub.dev/packages/provider

## Goals for this sample

Show how to perform:

- Widget Testing,
- Flutter Driver(Integration) Testing,
- Performance Testing, and
- State Management Testing using the [Provider][] package.

## How to run tests
- Navigate to the project's root folder using command line and follow the steps below.

### To run tests using only the Flutter SDK:
The Flutter SDK can run some of the testing types on its own viz. unit testing and widget testing without the need of a physical device/emulator.
- Run `flutter test` to run all the test files in the `test/` directory in one go.
- To run a particular test file, run `flutter test test/<file_path>`

### To run tests on a physical device/emulator:
- Widget Tests:
  - Run `flutter run test/<file_path>`
- Flutter Driver Tests:
  - Run `flutter drive --target=test_driver/<file_path>`
  - eg. `flutter drive --target=test_driver/app.dart` to run the test in `test_driver/app_test.dart`
- Performance Tests:
  - Run `flutter drive --target=test_driver/<file_path> --profile` (Using a physical device and running performance tests in profile mode is recommended).
- State Management Tests:  
  - For Testing State using Flutter Driver
    - Run `flutter drive --target=test_driver/<file_path>`

### CI/CD
- Refer [.travis.yml](../.travis.yml) and the [tool](../tool) directory to see how to test Flutter projects using Travis-CI.

Note that we aren't performing Flutter Driver tests using the Travis tool in this repo. That is because it's recommended to use physical devices to run Driver tests. You can use [Firebase Test Lab](https://firebase.google.com/docs/test-lab), [Codemagic](https://codemagic.io/) or any platform of your choice to do that.
    
## Questions/issues

If you have a general question about testing in Flutter, the best places to go are:

- [Flutter documentation](https://flutter.dev/)
- [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please
[file an issue](https://github.com/flutter/samples/issues).
