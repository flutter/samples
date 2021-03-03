# federated_plugin_web

A flutter plugin to provide location support for web. The web implementation
of `federated_plugin` is tested using [integration_test](https://pub.dev/packages/integration_test) package.

### Steps to run integration test on browser

- Download and install the ChromeDriver from [here](https://chromedriver.chromium.org/downloads)
for the version of Chrome you are using.
- Start the driver using `chromedrive --port=4444`
- Run the test using `flutter drive -d web-server --browser-name=chrome --release --target=test_driver/federated_plugin_web_integration.dart`
