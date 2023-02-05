# element_embedding_demo

This package contains the application used to demonstrate the
upcoming Flutter web feature: "Element Embedding".

This was first shown on the Flutter Forward event in Nairobi (Kenya), by Tim
Sneath. [See the replay here](https://www.youtube.com/watch?v=zKQYGKAe5W8&t=5799s).

## Running the demo

The demo is a Flutter web app, so it can be run as:

```terminal
$ flutter run -d chrome
```

## Points of Interest

* Check the new JS Interop:
  * Look at `lib/main.dart`, find the `@js.JSExport()` annotation.
  * Find the JS code that interacts with Dart in `web/js/demo-js-interop.js`.
* See how the Flutter web application is embedded into the page now:
  * Find `hostElement` in `web/index.html`.

_(Built by @ditman, @kevmoo and @malloc-error)_
