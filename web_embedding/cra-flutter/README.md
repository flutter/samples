# cra-flutter

This React project is a simple example of how React and Flutter
web apps could be integrated, and have them interop.

This project bootstrapped with [Create React App](https://github.com/facebook/create-react-app)
using `npm init react-app cra-flutter --template typescript` command.

## Points of Interest

### React
The following changes were made to be able to use (and interop) with a Flutter module:
* `package.json` has a custom `prebuild` script that builds the
  Flutter web app, so React can find it later.
* `flutter.js` is added using "script" tag in `public/index.html`
* The `FlutterView` component takes care of embedding Flutter web, and yielding
  control to React through an `appLoaded` `EventEmitter`. The object yielded
  by this emitter is a state controller exposed by flutter via a JS custom
  event!

### Flutter

The embedded Flutter application lives in the `flutter` directory of this repo.
That application is a standard web app, that doesn't need to be aware that it's
going to be embedded in another framework.

* Flutter uses new `@staticInterop` methods to allow certain Dart functions to
  be called from JavaScript.
* Look at how `createDartExport` and `broadcastAppEvent` work together to make
  the `_state` controller of the Flutter app available to Angular!

## Available Scripts

In the project directory, you can run:

### `npm run start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.\
You will also see any lint errors in the console.

### `npm run test`

Launches the test runner in the interactive watch mode.\
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.\
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.\
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).
