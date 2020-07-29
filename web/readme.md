# Sample Index and Web Demos

This directory contains the index hosted at [flutter.github.io/samples][samples]
and web demos hosted with it.

## See the demos in action

Compiled versions of the samples are hosted at
[flutter.github.io/samples/#?platform=web][samples].

## Building samples code

Update Flutter and enable web support

```console
$ flutter channel dev
$ flutter upgrade
$ flutter config --enable-web
```

Run the demo using the `chrome` device type:

```console
$ cd slide_puzzle
$ flutter packages get
$ flutter run -d chrome
```

You should see a message printing the URL to access: `http://localhost:8080`

Web support is available as a technical preview and is only available in the
`dev` or `master` channels.

## Deploying to GitHub Pages

This project uses [peanut][peanut] to build the samples and commit the output
to the gh-pages branch. To deploy, run these commands in the `web/` directory:

Install the peanut command:

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

