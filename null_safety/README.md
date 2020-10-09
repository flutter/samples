# Null safety Flutter example

This folder contains a demonstration of the upcoming Dart feature, sound null
safety. For additional information about this feature, please see
https://dart.dev/null-safety.

The folder contains two sample Flutter apps:

  * `null_unsafe_app`: This contains a small weather app, which has three null
    errors in its rendering code as a result of not using null safety.
    
    Try running the app (`flutter run` in a terminal, or the Run action in
    VSCode/Android Studio), and see if the UI works. The null errors are
    sporadic, so try hot reloading a bunch of times and experience the app
    sometimes working and sometimes failing.

  * `null_safe_app`: This contains the same weather app, but this time using
    null safety. There are two copies of the source code:

  `lib/badapp.dart`: This is the same source code as in the unsafe app. Try
  uncommenting the two commented lines of null-unsafe code, and notice how the
  Dart analyzer with null safety immediately flags the lines as unsafe.

  `lib/goodapp.dart`: This a safe version of the unsafe app, with the null
  errors fixed. Read through the comments to see illustrations of how to resolve
  null errors with null safety.

## Running the example code

Null safety is still in technical preview. As a result you need to use a
dev-channel Flutter build, and you have to pass an [experiment
flag](https://dart.dev/tools/experiment-flags).

### Flutter preview SDK installation

  1. Download the latest null safety preview build from the **Dev channel** of
     the Flutter SDK releases page:
     https://flutter.dev/docs/development/tools/sdk/releases.
        
  1. Unzip the SDK to a folder, e.g. `/Users/michael/dev/preview/flutter` (on
     macOS/Linux) or `C:\Users\michael\dev\preview\flutter\` (on Windows)

### Running from the terminal/command-prompt

Because null safety is still in tech preview, we need to pass a so-called
_experiment flag_ when invoking any Flutter command in the terminal, which looks
like this: `--enable-experiment=non-nullable`.

To run the main app, type these commands in the terminal/command-prompt:

  - Windows:
    - `cd <folder with samples repo>\null_safety\calculate_lix\`
    - `C:\Users\michael\dev\preview\flutter\bin\flutter pub get`
    - `C:\Users\michael\dev\preview\flutter\bin\flutter run --enable-experiment=non-nullable` 
  - macOS/Linux:
    - `cd <folder with samples repo>/null_safety/calculate_lix/`
    - `/Users/michael/dev/preview/flutter/bin/flutter pub get`
    - `/Users/michael/dev/preview/flutter/bin/flutter flutter run --enable-experiment=non-nullable`

### Running from VSCode

This example contains a launch configuration for VSCode that passes the
experimental flag, so to run the sample in VSCode:

  1. Edit your VSCode configuration to point to one additional Dart SDK, the
     preview SDK we just downloaded. See [details
     here](https://dartcode.org/docs/quickly-switching-between-sdk-versions/)
     for what values to put in **View > Command Palette > Open Settings (JSON)**.

  1. Invoke **File > Open**, and select the `null_safety/null_safe_app` folder.

  1. Tell VSCode to use the preview Dart SDK: Open `lib/main.dart` and then
     locate the 'Dart: <version number>' selector in the status bar at the
     bottom, and select `Flutter: <dev channel version you downloaded>`.

  1. Select **Run > Run** and the project should run and print a message in the
     Debug Console.


### Running from Android Studio

  1. Start Android Studio.

  1. Select Open Project, and select the `null_safety/null_safe_app` folder.

  1. Open the file `lib/main.dart` in the code editor.

  1. Select 'Open Dart Settings' in the top banner.

  1. Select both 'Enable Dart support' checkmarks at the top and bottom of the
     dialog.
  
  1. Under Dart SDK specify the path to the Dart preview SDK (2.9.0-14.0.dev).
     Click OK.

  1. Select Run > Run and the project should run and print a message in the Run
     pane.
