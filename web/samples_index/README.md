# Flutter samples index generator

This tool is used to generate the visual 
[samples index for Flutter samples](https://flutter.github.io/samples/).

## Generating the index

We use [grinder](https://pub.dev/packages/grinder) to run the build tasks:

```bash
$ dart pub get
$ dart run grinder generate
```

This will generate the index into `./web`

## Serving the index locally

If you want to serve the index locally, you can use
[webdev](https://pub.dev/packages/webdev):

```bash
$ dart pub global activate grinder
$ webdev serve
```

## Publishing the index

You can build the complete index into a publishable directory using Grinder:

```bash
$ dart run grinder build-release
```

This outputs the completely built index to `./public`.

## Generating cookbook content

The cookbook articles are generated using a WebDriver script
that scrapes the docs.flutter.dev website. To run:

1. Install [ChromeDriver](https://chromedriver.chromium.org/downloads)
2. run `chromedriver --port=4444 --url-base=wd/hub --verbose`
3. run `dart run grinder scrape-cookbook`
