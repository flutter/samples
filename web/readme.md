Web samples

## See the samples in action

Compiled versions of the samples are hosted at
[flutter.github.io/samples][samples].

## Building samples code

Go into one of the sample directories, get packages, and run using the `chrome`
device:

```console
$ flutter channel dev
$ flutter upgrade
$ cd gallery
$ flutter pub get
$ flutter run -d chrome
```

Web support is available as a technical preview and is only available in the
`dev` or `master` channels.

You should see a message printing the URL to access: `http://localhost:8080`

## Deploying to GitHub Pages

This project uses [peanut][peanut] to build the samples and commit the output
to the gh-pages branch. To deploy, run these commands in the `web/` directory:

```console
$ flutter pub global activate peanut
$ flutter pub global run peanut
$ git push origin gh-pages:gh-pages
```

Note: `flutter packages get` must be run in each sample before running `peanut`.

[web]: https://flutter.dev/web
[samples]: https://flutter.github.io/samples/
[peanut]: https://github.com/kevmoo/peanut.dart

