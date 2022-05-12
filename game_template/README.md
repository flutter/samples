A starter game in Flutter with all the bells and whistles
of a mobile (iOS & Android) game including the following features:

- sound
- music
- main menu screen
- settings
- ads (AdMob)
- in-app purchases
- games services (Game Center & Google Play Games Services)
- crash reporting (Firebase Crashlytics)


# Getting started

The game compiles and works out of the box. It comes with things
like a main menu, a router, a settings screen, and audio.
When building a new game, this is likely everything you first need.

When you're ready to enable more advanced integrations, like ads
and in-app payments, read the _Integrations_ section below.


# Development

To run the app in debug mode:

    flutter run

This assumes you have an Android emulator,
iOS Simulator, or an attached physical device.

It is often convenient to develop your game as a desktop app.
For example, you can run `flutter run -d macOS`, and get the same UI
in a desktop window on a Mac. That way, you don't need to use a
simulator/emulator or attach a mobile device. This template supports
desktop development by disabling integrations like AdMob for desktop.


## Code organization

Code is organized in a loose and shallow feature-first fashion.
In `lib/src`, you'll therefore find directories such as `ads`, `audio`
or `main_menu`. Nothing fancy, but usable.

```
lib
├── src
│   ├── ads
│   ├── app_lifecycle
│   ├── audio
│   ├── crashlytics
│   ├── game_internals
│   ├── games_services
│   ├── in_app_purchase
│   ├── level_selection
│   ├── main_menu
│   ├── play_session
│   ├── player_progress
│   ├── settings
│   ├── style
│   └── win_game
├── ...
└── main.dart
```

The state management approach is intentionally low-level. That way, it's easy to
take this project and run with it, without having to learn new paradigms, or having
to remember to run `flutter pub run build_runner watch`. You are,
of course, encouraged to use whatever paradigm, helper package or code generation
scheme that you prefer.


## Building for production

To build the app for iOS (and open Xcode when finished):

```bash
flutter build ipa && open build/ios/archive/Runner.xcarchive
```

To build the app for Android (and open the folder with the bundle when finished):

```bash
flutter build appbundle && open build/app/outputs/bundle/release
```

While the template is meant for mobile games, you can also publish
for the web. This might be useful for web-based demos, for example,
or for rapid play-testing. The following command requires installing
[`peanut`](https://pub.dev/packages/peanut/install).

```bash
flutter pub global run peanut \
--web-renderer canvaskit \
--extra-args "--base-href=/name_of_your_github_repo/" \
&& git push origin --set-upstream gh-pages
```

The last line of the command above automatically pushes
your newly built web game to GitHub pages, assuming that you have
that set up.


# Integrations

The more advanced integrations are disabled by default. For example,
achievements aren't enabled at first because you, the developer,
have to set them up (the achievements need to exist in App Store Connect
and Google Play Console before they can be used in the code).

This section includes instructions on how to enable 
any given integration.

Some general notes: 

- Change the package name of your game
  before you start any of the deeper integrations.
  [StackOverflow has instructions](https://stackoverflow.com/a/51550358/1416886)
  for this, and the [`rename`](https://pub.dev/packages/rename) tool
  (on pub.dev) automates the process.
- The guides below all assume you already have your game
  registered in [Google Play Console][] and in Apple's
  [App Store Connect][].


## Ads

Ads are implemented using the official `google_mobile_ads` package
and are disabled by default. 

```dart
// TODO: When ready, uncomment the following lines to enable integrations.

AdsController? adsController;
// if (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) {
//   /// Prepare the google_mobile_ads plugin so that the first ad loads
//   /// faster. This can be done later or with a delay if startup
//   /// experience suffers.
//   adsController = AdsController(MobileAds.instance);
//   adsController.initialize();
// }
```

The `AdsController` code in`lib/main.dart` is `null` by default,
so the template gracefully falls back to not showing ads
on desktop.

You can find the code relating to ads in `lib/src/ads/`.

To enable ads in your game:

1. Go to [AdMob][] and set up an account.
   This could take a significant amount of time because you need to provide
   banking information, sign contracts, and so on.
2. Create two _Apps_ in [AdMob][]: one for Android and one for iOS.
3. Get the AdMob _App IDs_ for both the Android app and the iOS app.
   You can find these in the _App settings_ section. They look
   something like `ca-app-pub-1234567890123456~1234567890`
   (note the tilde between the two numbers).
4. Open `android/app/src/main/AndroidManifest.xml`, find the `<meta-data>`
   entry called `com.google.android.gms.ads.APPLICATION_ID`,
   and update the value with the _App ID_ of the Android AdMob app
   that you obtained in the previous step.
   
   ```xml
   <meta-data
      android:name="com.google.android.gms.ads.APPLICATION_ID"
      android:value="ca-app-pub-1234567890123456~1234567890"/>
   ```
5. Open `ios/Runner/Info.plist`, find the
   entry called `GADApplicationIdentifier`,
   and update the value with the _App ID_ of the iOS AdMob app.
   
   ```xml
   <key>GADApplicationIdentifier</key>
   <string>ca-app-pub-1234567890123456~0987654321</string>
   ```
6. Back in [AdMob][], create an _Ad unit_ for each of the AdMob apps.
   This asks for the Ad unit's format (Banner, Interstitial, Rewarded).
   The template is set up for a Banner ad unit, so select that if you
   want to avoid making changes to the code in `lib/src/ads`.
7. Get the _Ad unit IDs_ for both the Android app and the iOS app.
   You can find these in the _Ad units_ section. They look
   something like `ca-app-pub-1234567890123456/1234567890`
   (yes, the format is very similar to _App ID_; note the slash
   between the two numbers).
8. Open `lib/src/ads/ads_controller.dart` and update the values
   of the _Ad unit_ IDs there.
   
   ```dart 
   final adUnitId = defaultTargetPlatform == TargetPlatform.android
       ? 'ca-app-pub-1234567890123456/1234567890'
       : 'ca-app-pub-1234567890123456/0987654321';
   ```
9. Uncomment the code relating to ads in `lib/main.dart`,
   and add the following two imports:
   
   ```dart
   import 'dart:io';
   import 'package:google_mobile_ads/google_mobile_ads.dart';
   ```
10. Register your test devices
   in [AdMob][]'s _Settings_ &rarr; _Test devices_ section.

[AdMob]: https://admob.google.com/

The game template defines a sample AdMob _app ID_ and two sample _Ad unit ID_s.
These allow you to test your code without getting real
IDs from AdMob, but this "feature" is sparsely documented and only meant
for hello world projects. 
The sample IDs **won't** work for published games.

If you feel lost at any point, a full [AdMob for Flutter walk-through][]
is available on Google AdMob's documentation site.

[AdMob for Flutter walk-through]: https://developers.google.com/admob/flutter/quick-start

If you want to implement more AdMob formats (such as Interstitial ads),
a good place to start are the examples in
[`package:google_mobile_ads`](https://pub.dev/packages/google_mobile_ads).

## Audio

Audio is enabled by default and ready to go. You can modify code
in `lib/src/audio/` to your liking.

You can find some music
tracks in `assets/music` — these are Creative Commons Attribution (CC-BY)
licensed, and are included in this repository with permission. If you decide
to keep these tracks in your game, please don't forget to give credit
to the musician, [Mr Smith][].

[Mr Smith]: https://freemusicarchive.org/music/mr-smith

The repository also includes a few sound effect samples in `assets/sfx`.
These are public domain (CC0) and you will almost surely want to replace
them because they're just recordings of a developer doing silly sounds
with their mouth.

## Crashlytics

Crashlytics integration is disabled by default. But even if you don't
enable it, you might find code in `lib/src/crashlytics` helpful.
It gathers all log messages and errors, so that you can, at the very least,
print them to the console.

When enabled, this integration is a lot more powerful:

- Any crashes of your app are sent to the Firebase Crashlytics console.
- Any uncaught exception thrown anywhere in your code is captured
  and sent to the Firebase Crashlytics console.
- Each of these reports includes the following information:
  - Error message
  - Stack trace
  - Device model, orientation, RAM free, disk free
  - Operating system version
  - App version
- In addition, log messages generated anywhere in your app 
  (and from packages you use) are recorded in memory,
  and are sent alongside the reports. This means that you can
  learn what happened before the crash or exception
  occurred.
- Also, any generated log message with `Level.severe` or above
  is also sent to Crashlytics.
- You can customize these behaviors in `lib/src/crashlytics`.

To enable Firebase Crashlytics, do the following:

1. Create a new project in
   [console.firebase.google.com](https://console.firebase.google.com/).
   Call the Firebase project whatever you like; just **remember the name**.
   You don't need to enable Analytics in the project if you don't want to.
2. [Install `firebase-tools`](https://firebase.google.com/docs/cli?authuser=0#setup_update_cli)
   on your machine.
3. [Install `flutterfire` CLI](https://firebase.flutter.dev/docs/cli#installation)
   on your machine.
4. In the root of this project (the directory containing `pubspec.yaml`),
   run the following:
    - `flutterfire configure`
        - This command asks you for the name of the Firebase project
     that you created earlier, and the list of target platforms you support.
     As of April 2022, only `android` and `ios` are fully
          supported by Crashlytics.
        - The command rewrites `lib/firebase_options.dart` with
          the correct code.
5. Go to `lib/main.dart` and uncomment the lines that relate to Crashlytics.

You should now be able to see crashes, errors, and 
severe log messages in
[console.firebase.google.com](https://console.firebase.google.com/).
To test, add a button to your project, and throw whatever
exception you like when the player presses it.

```dart
TextButton(
  onPressed: () => throw StateError('whoa!'),
  child: Text('Test Crashlytics'),
)
```


## Games Services (Game Center & Play Games Services)

Games Services (like achievements and leaderboards) are implemented by the
[`games_services`](https://pub.dev/packages/games_services) package,
and are disabled by default.

To enable games services, first set up _Game Center_ on iOS
and _Google Play Games Services_ on Android.

To enable _Game Center_ (GameKit) on iOS:

1. Open your Flutter project in Xcode (`open ios/Runner.xcodeproj`).
2. Select the root _Runner_ project and go to the _Signing & Capabilities_ tab.
3. Click the `+` button to add _Game Center_ as a capability.
   You can close Xcode now.
4. Go to your app in [App Store Connect][] and set up _Game Center_ 
   in the _Features_ section. For example, you might want to set up
   a leaderboard and several achievements.
   Take note of the IDs of the leaderboards and achievements you create.

[App Store Connect]: https://appstoreconnect.apple.com/

To enable _Play Games Services_ on Android:

1. Go to your app in [Google Play Console][].
2. Select _Play Games Services_ &rarr; _Setup and management_ &rarr;
   _Configuration_ from the navigation menu and follow their instructions.
   * This takes a significant amount of time and patience.
     Among other things, you'll need to set up an OAuth consent
     screen in Google Cloud Console.
     If at any point you feel lost,
     consult the official [Play Games Services guide][].
3. When done, you can start adding leaderboards and achievements
   in _Play Games Services_ &rarr; _Setup and management_.
   Create the exact same set as you did on the iOS side.
   Make note of IDs.
4. Go to _Play Games Services_ &rarr; _Setup and management_ &rarr;
   Publishing, and click _'Publish'_. Don't worry, this doesn't
   actually publish your game. It only publishes the achievements
   and leaderboard. Once a leaderboard, for example, is published 
   this way, it cannot be unpublished.
5. Go to _Play Games Services_ &rarr; 
    _Setup and management_ &rarr; _Configuration_ &rarr;
    _Credentials_. Find a button that says _'Get resources'_.
    You get an XML file with the _Play Games Services_ IDs.
   
    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <!--Google Play game services IDs. Save this file as res/values/games-ids.xml in your project.-->
    <resources>
        <!--app_id-->
        <string name="app_id" translatable="false">424242424242</string>
        <!--package_name-->
        <string name="package_name" translatable="false">dev.flutter.tictactoe</string>
        <!--achievement First win-->
        <string name="achievement_first_win" translatable="false">sOmEiDsTrInG</string>
        <!--leaderboard Highest Score-->
        <string name="leaderboard_highest_score" translatable="false">sOmEiDsTrInG</string>
    </resources>
    ```
6. Replace the file at `android/app/src/main/res/values/games-ids.xml`
   with the XML you received in the previous step.

[Google Play Console]: https://play.google.com/console/
[Play Games Services guide]: https://developers.google.com/games/services/console/enabling

Now that you have set up _Game Center_ and _Play Games Services_,
and have your achievement & leaderboard IDs ready, it's finally Dart time.

1. Open `lib/src/games_services/games_services.dart` and edit the leaderboard
   IDs in the `showLeaderboard()` function.
   
   ```dart
   // TODO: When ready, change both these leaderboard IDs.
   iOSLeaderboardID: "some_id_from_app_store",
   androidLeaderboardID: "sOmE_iD_fRoM_gPlAy",
   ```
2. The `awardAchievement()` function in the same file takes the IDs
    as arguments. You can therefore call it from anywhere
    in your game like this:
   
    ```dart
    final gamesServicesController = context.read<GamesServicesController?>();
    await gamesServicesController?.awardAchievement(
        iOS: 'an_achievement_id',
        android: 'aNaChIeVeMenTiDfRoMgPlAy',
    );
    ```
   
    You might want to attach the achievement IDs to levels, enemies,
    places, items, and so on. For example, the template has levels
    defined in `lib/src/level_selection/levels.dart` like so:
   
    ```dart
    GameLevel(
      number: 1,
      difficulty: 5,
      achievementIdIOS: 'first_win',
      achievementIdAndroid: 'sOmEtHinG',
    ),
    ```
   
    That way, after the player reaches a level, we check if the level
    has non-null achievement IDs, and if so, we call `awardAchievement()`
    with those IDs.
3. Uncomment the code relating to games services in `lib/main.dart`.
   
    ```dart
    // TODO: When ready, uncomment the following lines.

    GamesServicesController? gamesServicesController;
    // if (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) {
    //   gamesServicesController = GamesServicesController()
    //     // Attempt to log the player in.
    //     ..initialize();
    // } 
    ```
   
If at any point you feel lost, there's a [How To][] guide written by the author
of `package:games_services`. Some of the guide's instructions and screenshots
are slightly outdated (for example, _iTunes Connect_ has been renamed to _App Store Connect_
after the article was published) but it's still an excellent resource.

[How To]: https://itnext.io/how-to-integrate-gamekit-and-google-play-services-flutter-4d3f4a4a2f77


## In-app purchases

In-app purchases are implemented using the official
[`in_app_purchase`](https://pub.dev/packages/in_app_purchase) package.
The integration is disabled by default.

To enable in-app purchases on Android:

1. Upload the game to [Google Play Console][], 
   to the Closed Testing track.
   - Since the game already
     depends on `package:in_app_purchase`, it signals itself to the
     Play Store as a project with in-app purchases.
   - Releasing to Closed Testing triggers a review process,
     which is a prerequisite for in-app purchases to work.
     The review process can take several days and until it's complete,
     you can't move on with the Android side of things.
2. Add an in-app product in _Play Console_ &rarr; _Monetize_ &rarr;
   _In-app products_. Come up with a product ID (for example,
   `ad_removal`).
3. While still in Play Console, _activate_ the in-app product.
   
To enable in-app purchases on iOS:

1. Make sure you have signed the _Paid Apps Agreement_
   in [App Store Connect][].
2. While still in App Store Connect, go to _Features_ &rarr;
   _In-App Purchases_, and add a new in-app purchase
   by clicking the `+` button.
   Use the same product ID you used on the Android side.
3. Follow instructions on how to get the in-app purchase approved.

Now everything is ready to enable the integration in your Dart code:

1. Open `lib/src/in_app_purchase/ad_removal.dart` and change `productId`
    to the product ID you entered in Play Console and App Store Connect.

    ```dart
    /// The representation of this product on the stores.
    static const productId = 'remove_ads';
    ```   

    - If your in-app purchase is not an ad removal, then create a class
      similar to the template's `AdRemovalPurchase`.
    - If you created several in-app purchases, you need to modify
      the code in `lib/src/in_app_purchase/in_app_purchase.dart`.
      By default, the template only supports one in-app purchase.
2. Uncomment the code relating to in-app purchases in `lib/main.dart`.

    ```dart
    // TODO: When ready, uncomment the following lines.
   
    InAppPurchaseController? inAppPurchaseController;
    // if (!kIsWeb && (Platform.isIOS || Platform.isAndroid)) {
    //   inAppPurchaseController = InAppPurchaseController(InAppPurchase.instance)
    //     // Subscribing to [InAppPurchase.instance.purchaseStream] as soon
    //     // as possible in order not to miss any updates.
    //     ..subscribe();
    //   // Ask the store what the player has bought already.
    //   inAppPurchaseController.restorePurchases();
    // }
    ```


If at any point you feel lost, check out the official 
[Adding in-app purchases to your Flutter app](https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#0)
codelab.


## Settings

The settings page is enabled by default, and accessible both
from the main menu and the "gear" button in the play session screen.

Settings are saved to local storage using the `package:shared_preferences`.
To change what preferences are saved and how, edit files in
`lib/src/settings/persistence`.

```dart
abstract class SettingsPersistence {
  Future<bool> getMusicOn();

  Future<bool> getMuted({required bool defaultValue});

  Future<String> getPlayerName();

  Future<bool> getSoundsOn();

  Future<void> saveMusicOn(bool value);

  Future<void> saveMuted(bool value);

  Future<void> savePlayerName(String value);

  Future<void> saveSoundsOn(bool value);
}
```

# Icon

To update the launcher icon, first change the files
`assets/icon-adaptive-foreground.png` and `assets/icon.png`.
Then, run the following:

```bash
flutter pub run flutter_launcher_icons:main
```

You can [configure](https://github.com/fluttercommunity/flutter_launcher_icons#book-guide)
the look of the icon in the `flutter_icons:` section of `pubspec.yaml`.
