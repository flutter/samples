# Flutter samples index generator

This tool is used to generate the visual samples index for Flutter samples.

## Generating the index

We use [grinder](https://pub.dev/packages/grinder) to run the build tasks:

```bash
$ pub get
$ pub global activate grinder
$ grind build
```

This will generate the index into `./web`

## Serving the index locally

If you want to serve the index locally, you can use
[build_runner](https://pub.dev/packages/build_runner):

```bash
$ pub run build_runner serve
```

## Publishing the index

You can build the complete index into a publishable directory using
[build_runner](https://pub.dev/packages/build_runner):

```bash
$ grind build-release
```

This outputs the completely built index to `./public`.

## Deploying to Firebase

After running `grind build-release`, set up .firebaserc and firebase.json, then
run:

```bash
firebase deploy
```

## Generating cookbook content

1. Install [ChromeDriver](https://chromedriver.chromium.org/downloads)
2. run `chromedriver --port=4444 --url-base=wd/hub --verbose`
3. run `grind scrape-cookbook`
