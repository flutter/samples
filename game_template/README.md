# game_template

A tiny game in Flutter with all the bells and whistles
of a mobile (iOS & Android) game:

- sound
- music
- main menu screen
- settings
- ads (AdMob)
- in-app purchases
- games services (Game Center & Google Play Games Services)
- crash reporting (Firebase Crashlytics)


## Getting started

The game compiles and works out of the box. It comes with things
like a main menu, a router, a settings screen, music, sound effects.
When starting your gamedev project, that is everything you will need.

When you're ready, read the _Integrations_ section below.


## Development

To run the app in debug mode:

    flutter run

This assumes you have an Android emulator, iOS Simulator or a physical
device attached.

It is sometimes convenient to develop your game as a desktop app.
For example, you can run `flutter run -d macOS`, and get the same UI
in a desktop window on a Mac. That way, you don't need to be running
Simulators nor attaching mobile devices. This template supports that
method of development: integrations like AdMob will be disabled then.


### Code organization

Code is organized in a loose and shallow feature-first fashion.
In `lib/src`, you'll therefore find directories such as `ads`, `audio`
or `main_menu`. Nothing fancy, but usable.

The state management approach is intentionally low-level. That way, it's easy to
take this project and run with it, without having to learn new paradigms, or having
to remember to run `flutter pub run build_runner watch`. You are,
of course, encouraged to use whatever paradigm, helper package or code generation
scheme to build on top of this project.


### Building for production

To build the app for iOS (and open Xcode when finished):

    flutter build ipa && open build/ios/archive/Runner.xcarchive

To build the app for Android (and open the folder with the bundle when finished):

    flutter build appbundle && open build/app/outputs/bundle/release

While the template is meant for mobile games, you can also publish
for the web. This might be useful for web-based demos, for example,
or for rapid play-testing. The following command requires `peanut`
to be [installed](https://pub.dev/packages/peanut/install).

    flutter pub global run peanut \
    --web-renderer canvaskit \
    --extra-args "--base-href=/name_of_your_github_repo/" \
    && git push origin --set-upstream gh-pages

The last line of the command above will automatically push 
your newly built web game to GitHub pages, assuming that you have
that set up.


## Integrations

The more advanced integrations are disabled by default. For example,
achievements are not enabled at start because you, the developer, first
have to set them up. The achievements need to exist in App Store Connect
and Google Play Console before they can be used in the code.

In this section, you will find pointers on what to do to enable 
any given integration.


### Ads

TBA

### Audio

Audio is enabled by default and ready to go. 

You will find some music
tracks in `assets/music` — these are Creative Commons Attribution (CC-BY)
licensed, and included in this repository with permission. If you decide
to keep these tracks in your game, please don't forget to give credit
to the musician, [Mr Smith][].

[Mr Smith]: https://freemusicarchive.org/music/mr-smith

The repository also includes a few sound effect samples in `assets/sfx`.
These are public domain (CC0) and you will almost surely want to replace
them because they're just Filip Hracek doing silly sounds with his mouth.

### Crashlytics

Crashlytics integration is disabled by default. But even if you don't
enable it, you might find code in `lib/src/crashlytics` helpful.
It gathers all log messages and errors, so that you can, at the very least,
print them to the console.

To enable Firebase Crashlytics, do the following:

1. Create a new project in
   [console.firebase.google.com](https://console.firebase.google.com/).
   You can call the Firebase project whatever you like; just remember the name.
   You don't need to enable Analytics in the project if you don't want to.
2. [Install `firebase-tools`](https://firebase.google.com/docs/cli?authuser=0#setup_update_cli)
   on your machine.
3. [Install `flutterfire` CLI](https://firebase.flutter.dev/docs/cli#installation)
   on your machine.
4. In the root of this project (the directory containing `pubspec.yaml`),
   run the following:
    - `flutterfire configure`
        - This command will ask you about the name of the Firebase project
          that you created earlier, and about the target platforms you want
          to support. As of April 2022, only `android` and `ios` are fully
          supported by Crashlytics.
        - The command will rewrite `lib/firebase_options.dart` with
          the correct code.
5. Go to `lib/main.dart` and uncomment the lines that relate to Crashlytics.

Now you should be able to see crashes, errors and 
severe log messages in
[console.firebase.google.com](https://console.firebase.google.com/).
To test this out, add a button to your project, and just throw whatever
exception you like when the player presses it.

```dart
TextButton(
  onPressed: () => throw StateError('whoa!'),
  child: Text('Test Crashlytics'),
)
```


### Games Services (Game Center & Google Play Games Services)

TBA

### In-app purchase

TBA

### Settings

The settings page is enabled by default, and accessible both
from the main menu and via the "gear" button in the play session screen.

Settings are saved to local storage via `package:shared_preferences`.
To change what preferences are saved and how, edit files in
`lib/src/settings/persistence`.

## Icon

To update the launcher icon, first change the files
`assets/icon-adaptive-foreground.png` and `assets/icon.png`.
Then, run the following:

    flutter pub run flutter_launcher_icons:main

You can configure the look of the icon in the `flutter_icons:`
section of `pubspec.yaml`.
