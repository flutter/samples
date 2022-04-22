# Crashlytics integration

To enable Crashlytics, do the following:

1. Create a new project in https://console.firebase.google.com/. You can
   call the Firebase project whatever you like; just remember the name.
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
5. Go to `lib/main.dart` and uncomment the lines that relate to Crashlytics.
