# web_dashboard

**In progress** 

A dashboard app that displays daily entries.

1. How to use an AdaptiveScaffold adaptive layout for large, medium, and small
screens.
2. How to use Firebase [Cloud
Firestore](https://firebase.google.com/docs/firestore) database with Google
Sign-In.
3. How to use [charts](https://pub.dev/packages/charts_flutter) to display
data. 
4. (in progress) How to set up routing for a web app

This app is web-first, and isn't guaranteed to run on iOS, Android or desktop
platforms.

## Running

Normal mode (DDC):

```
flutter run -d chrome
```

Skia / CanvasKit mode:

```
flutter run -d chrome --release --dart-define=FLUTTER_WEB_USE_SKIA=true
```

## Running JSON code generator

```
flutter pub run grinder generate
```

## Add Firebase

### Step 1: Create a new Firebase project

Go to [console.firebase.google.com](https://console.firebase.google.com/) and
create a new Firebase project.

### Step 2: Enable Google Sign In for your project

In the Firebase console, go to "Authentication" and enable Google sign in. Click
on "Web SDK Configuration" and copy down your Web client ID.

### Step 3: Add Client ID to `index.html`

Uncomment this line in `index.html` and replace `<YOUR WEB CLIENT ID>` with the
client ID from Step 2:

```html
  <!-- Uncomment and add Firebase client ID here: -->
  <!-- <meta name="google-signin-client_id" content="<YOUR WEB CLIENT ID>"> -->
```

### Step 4: Create a web app

In the Firebase console, under "Project overview", click "Add app", select Web,
and replace the contents of `web/firebase_init.js`.

```javascript
// web/firebase_init.js
var firebaseConfig = {
    apiKey: "",
    authDomain: "",
    databaseURL: "",
    projectId: "",
    storageBucket: "",
    messagingSenderId: "",
    appId: ""
};

// Initialize Firebase
firebase.initializeApp(firebaseConfig);
```

### Step 4: Create Cloud Firestore

Create a new Cloud Firestore database and add the following rules to disallow
users from reading/writing other users' data:

```
rules_version = '2';

service cloud.firestore {
  match /databases/{database}/documents {
    // Make sure the uid of the requesting user matches name of the user
    // document. The wildcard expression {userId} makes the userId variable
    // available in rules.
    match /users/{userId}/{document=**} {
      allow read, update, delete: if request.auth.uid == userId;
      allow create: if request.auth.uid != null;
    }
  }
}
```

### Step 5: Run the app

Run the app on port 5000:

```bash
flutter run -d chrome --web-port=5000
```

If you see CORS errors in your browser's console, go to the [Services
section][cloud-console-apis] in the Google Cloud console, go to Credentials, and
verify that `localhost:5000` is whitelisted.

### (optional) Step 7: Set up iOS and Android
If you would like to run the app on iOS or Android, make sure you've installed
the appropriate configuration files described at
[firebase.google.com/docs/flutter/setup][flutter-setup] from step 1, and follow
the instructions detailed in the [google_sign_in README][google-sign-in]

[flutter-setup]: https://firebase.google.com/docs/flutter/setup
[cloud-console-apis]: https://console.developers.google.com/apis/dashboard
[google-sign-in]: https://pub.dev/packages/google_sign_in
