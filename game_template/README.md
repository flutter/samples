# tictactoe

A sample mobile game built in Flutter.

This sample focuses on what I call "app-like games". It's a very popular genre of (often mobile)
games that do not have a normal game loop (where the screen changes almost every frame).
Instead, these "app-like games" spend most of their time waiting for the player's input, just like
regular apps. The games may be real-time, but they seldom redraw the whole screen.

Examples of such "app-like games":

- [Puzzle games](https://en.wikipedia.org/wiki/Puzzle_video_game)
- [Hidden object games](https://en.wikipedia.org/wiki/Hidden_object_game)
- [Visual novels](https://en.wikipedia.org/wiki/Visual_novel)
- [Interactive fiction](https://en.wikipedia.org/wiki/Interactive_fiction)
- [Incremental games](https://en.wikipedia.org/wiki/Incremental_game)
- Digitized board games (like chess)
- Card games (digitized, like poker, or digital-only, like Hearthstone or Slay The Spire)
- Manager games (like old Football Manager games, where most of the "action" is in spreadsheets)

These types of games are a great fit for Flutter, since they can use Flutter's widget layer for
building UIs and still have powerful pixel-perfect control of visuals on all platforms.

Just to be clear, Flutter also supports more traditional videogames (with a 60 FPS game loop).
A great example of this is [Flame][], a 2D game engine made on top of Flutter.
It's just that *this* sample game is focused on "app-like games".

[Flame]: https://flame-engine.org/

Note: The name of the game in app stores is "Tic Tac Toe Puzzle Game". Because that's what it is,
and because every other variation of "Tic Tac Toe" is already taken.

## Demo

To make it easier for everyone to play with the sample, it's currently
[published here][].

[published here]: https://filiph.github.io/flutter_game_sample/mobile.html


## Development

To run the app in debug mode:

    flutter run

In same cases, for example in my Android Studio, you have to explicitly ask
for multidex support, so the above becomes:

    flutter run -Pmultidex-enabled=true

But this shouldn't generally be needed.

### Code organization

Code is organized in a loose and shallow feature-first fashion.
In `lib/src`, you'll therefore find directories such as `ads`, `ai`, `audio`
or `main_menu`. Nothing fancy, but usable.

The state management approach is intentionally low-level. That way, it's easy to
take this project and run with it, without having to learn new paradigms, or having
to remember to run `flutter pub run build_runner watch`. You are,
of course, encouraged to use whatever paradigm, helper package or code generation
scheme to build on top of this project.


### Building for production

The following assumes using [FVM][]. Just remove `fvm` from the commands if you
don't use FVM for Flutter version management.

[FVM]: https://fvm.app/

To build and publish to github.io:

    fvm flutter pub global run peanut \
    --web-renderer canvaskit \
    --extra-args "--base-href=/flutter_game_sample/" \
    && git push origin --set-upstream gh-pages

To build the app for iOS (and open Xcode when finished):

    fvm flutter build ipa && open build/ios/archive/Runner.xcarchive

To build the app for Android (and open the folder with the bundle when finished):

    fvm flutter build appbundle && open build/app/outputs/bundle/release


### Icon

Updating the launcher icon:

    fvm flutter pub run flutter_launcher_icons:main
