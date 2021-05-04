# Sample Index and Web Demos

This directory contains the index hosted at [flutter.github.io/samples][samples]
and web demos hosted with it.

## See the demos in action

Compiled versions of the samples are hosted at
https://flutter.github.io/samples/#?platform=web.

## Building samples code

Run the demo using the `chrome` device type:

```console
$ cd charts
$ flutter packages get
$ flutter run -d chrome
```

You should see a message printing the URL to access: `http://localhost:8080`

## Deploying to GitHub Pages

This project uses a GitHub action to deploy update the `gh-pages` branch. To 
do this manually, you can also use `package:peanut`:

```console
$ flutter pub global activate peanut
```

Verify `pub get` has been run on each demo:

```console
$ dart _tool/verify_packages.dart
```

Build all demos, along with the sample index:

```console
$ flutter pub global run peanut
```

Deploy to GitHub Pages:

```console
$ git push origin gh-pages:gh-pages
```

## Building the sample index

See sample_index/README.md for details

[web]: https://flutter.dev/web
[samples]: https://flutter.github.io/samples/
[peanut]: https://github.com/kevmoo/peanut.dart

