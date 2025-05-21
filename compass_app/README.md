# compass_app

The Compass sample application is an app that helps users build and book
itineraries for trips. It’s a robust sample application with many features, routes, and screens. The app communicates
with an HTTP server, has development and production environments, brand-specific styling, and high test coverage. In
these ways and more, it simulates a real-world, feature rich Flutter application.

The code in this application is used for explaining architecture in a Flutter application.

![compass app splash screen](./docs/Global%20—%20Splash.png)
![compass app activities screen](./docs/Legacy%20—%20Activities.png)
![compass app home screen](./docs/Legacy%20—%20Home.png)
![compass app booking screen](./docs/Legacy%20—%20Book.png)

The Compass app was originally [designed and built by the Firebase GenKit team](https://developers.googleblog.com/en/how-firebase-genkit-helped-add-ai-to-our-compass-app/).

## Running the app

This app contains multiple environments.

* Development environment - This environment uses data from a JSON file, which is stored in the `assets` directory, and simulates developing locally.

```bash 
$ cd app
$ flutter run --target lib/main_development.dart
```

* Staging environment - This environment uses an HTTP server to get data, simulating a real app experience. This is a "dummy" server, that has endpoints that simply return fake data. The server can be found in the `compass_app/server` directory. You need to run the server locally before running the Flutter application.

```bash
$ cd server
$ dart run
# => Server listening on port 8080
 
$ cd ../app
$ flutter run --target lib/main_staging.dart 
```

## Integration Tests

Integration tests must be run from the `app` directory.

**Integration tests with local data**

```bash
cd app
$ flutter test integration_test/app_local_data_test.dart
```

**Integration tests with background server and remote data**
> Simulators have their own `localhost`, separate from the desktop's. Therefore, tests on a simulator that try to connect to a local background server using `localhost` will fail to reach. To resolve this, find a non-loopback IPv4 address (e.g., using `ifconfig | grep inet` and choosing an address other than `127.0.0.1`, such as `192.168.0.106`).
```bash
cd app
$ LOCALHOST='your_non-loopback_ipv4_address' dart run integration_test/test_app_server_data.dart
```

Running the tests together with `flutter test integration_test` will fail.
See: https://github.com/flutter/flutter/issues/101031

