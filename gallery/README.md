# Flutter Gallery

Flutter Gallery is a resource to help developers evaluate and use Flutter.
It is a collection of Material Design & Cupertino widgets, behaviors, and vignettes
implemented with Flutter. We often get asked how one can see Flutter in action,
and this gallery demonstrates what Flutter provides and how it behaves in the
wild.

![Flutter Gallery](https://user-images.githubusercontent.com/6655696/73928238-0d7fcc80-48d3-11ea-8a7e-ea7dc5d6e713.png)

## Supported Platforms

Flutter Gallery has been built to support multiple platforms.
This includes:

- Android
- iOS
- web
- macOS
- Linux
- Windows

That being said, extra steps must be taken to [enable Desktop support](
https://github.com/flutter/flutter/wiki/Desktop-shells#tooling). For
example, to run the macOS app:

```
cd gallery/
flutter config --enable-macos-desktop
flutter create .
flutter run -d macos
```

Additionally, the UI adapts between mobile and desktop layouts regardless of the
platform it runs on. This is determined based on window size as outlined in
[adaptive.dart](lib/layout/adaptive.dart).

## To include a new splash animation

1. Convert your animation to a `.gif` file.
   Ideally, use a background color of `0xFF030303` to ensure the animation
   blends into the background of the app.

2. Add your new `.gif` file to the assets directory under
   `assets/splash_effects`. Ensure the name follows the format
   `splash_effect_$num.gif`. The number should be the next number after the
   current largest number in the repository.

3. Update the map `_effectDurations` in
   [splash.dart](lib/pages/splash.dart) to include the number of the
   new `.gif` as well as its estimated duration. The duration is used to
   determine how long to display the splash animation at launch.

## Generating localized strings and highlighted code segments

To generate localized strings or highlighted code segments, make sure that you
have [grinder](https://pub.dev/packages/grinder) installed. You can install it
by getting the packages in `samples/gallery/`:
```
flutter pub get
```

To generate localized strings (see separate [README](lib/l10n/README.md)
for more details):

```
flutter pub run grinder l10n
```

To generate code segments (see separate [README](tool/codeviewer_cli/README.md) for
more details):
```
flutter pub run grinder update-code-segments
```

## Creating a new release (for Flutter org members)

1. Bump the version number up in the `pubspec.yaml`. Use semantic versioning to determine 
   which number to increment. For example `2.2.0+020200` should become `2.3.0+020300`.
   
2. Create a tag on the `master` branch of this repo in the form of `gallery-v2.3`.
	* `git tag gallery-v2.3`
	* `git push --tags`

3. Publish the web release (using the [peanut package](https://pub.dev/packages/peanut)).
    * `flutter pub global activate peanut`
    * `flutter pub global run peanut:peanut`
    * `git push upstream gh-pages:gh-pages`
        * `git update-ref refs/heads/gh-pages upstream/gh-pages` if you need to align with upstream.

4. Publish the Android release (using the correct signing certificates).
    * Create the app bundle with `flutter build appbundle`.
    * Upload to the Play store console.
    * Publish the Play store release.
    * Create the APK with `flutter build apk` (this is for the Github release).

5. Draft a release in Github from the tag you created, call the release `Flutter Gallery 2.3`
    * Upload the Android APK from above.
    * Create and upload the macOS build by running `flutter build macos` and zipping the 
      app inside `build/macos/Build/Products/Release`.
    * Optional: Create and upload the Linux/Windows builds.
    * Publish the release.
