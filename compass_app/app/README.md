# compass_app

A new Flutter project.

## Integration Tests

Run separately with:

**Integration tests with local data**

```
flutter test integration_test/app_local_data_test.dart
```

**Integration tests with background server and remote data**

```
flutter test integration_test/app_server_data_test.dart
```

Running the tests together with `flutter test integration_test` will fail.
See: https://github.com/flutter/flutter/issues/101031
