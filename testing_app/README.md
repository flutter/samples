# testing_app

A Sample app that shows different types of testing in Flutter.

This particular sample uses the [Provider][] package but any other state management approach
would do.

[provider]: https://pub.dev/packages/provider

## Goals for this sample

Show how to perform:

- Widget Testing,
- Integration Testing,
- Performance Testing, and
- State Management Testing using the [Provider][] package.

## How to run tests
- Navigate to the project's root folder using command line and follow the instructions below.

### To run tests using only the Flutter SDK:
The Flutter SDK can run unit tests and widget tests in a virtual machine, without the need of a physical device or emulator.
- To run all the test files in the `test/` directory in one go, run `flutter test`.
- To run a particular test file, run `flutter test test/<file_path>`

### To run tests on a physical device/emulator:
- Widget Tests:
  - Run `flutter run test/<file_path>`
- Integration Tests:
  - Run `flutter test integration_test` to run all the integration tests with a single command.
  - Alternatively, you can run `flutter drive --driver=integration_test/driver.dart --target=integration_test/app_test.dart` to run them separately. You can also provide custom driver files with this command.
- Performance Tests:
  - Run `flutter drive --driver=integration_test/perf_driver.dart --target=integration_test/perf_test.dart --profile --trace-startup`
    - Using a physical device and running performance tests in profile mode is recommended.
    - The `--trace-startup` option is used to avoid flushing older timeline events when the timeline gets long.
- State Management Tests:
  - For testing state using Flutter Integration Tests
    - Run `flutter drive --driver=integration_test/driver.dart --target=integration_test/state_mgmt_test.dart`
    
### To generate test coverage report:
- Install the `lcov` tool:
  - For MacOS, run `brew install lcov`
  - For Linux, run `sudo apt install lcov`
- Run tests with coverage:
  - `flutter test --coverage`
- Convert `lcov.info` into readable html:
  - Run `genhtml coverage/lcov.info -o coverage/index`
- Open `coverage/index/index.html` in your preferred browser.
    
### CI/CD
- Refer [.github](../.github) and the [tool](../tool) directory to see how to test Flutter projects using GitHub Actions.

Note that tools like GitHub Actions can't run tests on a physical device, which is required to run integration tests. Instead, you can use [Firebase Test Lab](https://firebase.google.com/docs/test-lab), [Codemagic](https://docs.codemagic.io/testing/aws/) or any platform of your choice to do that.

## Questions/issues

If you have a general question about testing in Flutter, the best places to go are:

- [Flutter documentation](https://flutter.dev/)
- [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please
[file an issue](https://github.com/flutter/samples/issues).
