# federated_plugin_web

A flutter plugin to provide location support for web. The web implementation
of `federated_plugin` is tested using [e2e](https://pub.dev/packages/e2e) package.

### Steps to run e2e test on browser

- Download and install the ChromeDriver from [here](https://chromedriver.chromium.org/downloads)
for the version of Chrome you are using.
- Start the driver using `chromedrive --port=4444`
- Run the test using `flutter drive -d web-server --release --browser-name=chrome --target=test_driver/federated_plugin_web_e2e.dart`
