# web_dashboard

(In progress) A dashboard app for the web, built with Flutter.

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

## Add Firebase

### Step 1: Create Firebase project and install packages

Follow the steps at [firebase.google.com/docs/flutter/setup][flutter-setup].
This app uses these Firebase packages:

```yaml
# Add these packages to your pubspec.yaml under "dependencies"
  firebase_core: ^0.4.3
  cloud_firestore: ^0.13.0
  firebase_auth: ^0.15.0
  google_sign_in: ^4.0.0
```

### Step 2: Enable Google Sign In for your project

In the Firebase console, go to "Authentication" and enable Google sign in. Click
on "Web SDK Configuration" and copy down your Web client ID.

### Step 3: Add firebase scripts to `index.html`

Add these scripts to the `<head>` tag:

```html
  <!-- Firebase Setup -->
  <script src="https://www.gstatic.com/firebasejs/7.2.0/firebase-app.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.2.0/firebase-auth.js"></script>
  <script src="https://www.gstatic.com/firebasejs/7.2.0/firebase-firestore.js"></script>
  <script src="firebase_init.js"></script>
  <meta name="google-signin-client_id" content="<YOUR WEB CLIENT ID>">
```

Replace `<YOUR WEB CLIENT ID>` with the client ID from Step 2.

### Step 4: Create a web app

In the Firebase console, under "Project overview", click "Add app", select Web,
and paste the code snippet into a new file, `web/firebase_init.js` referenced in
step 3:

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

### Step 5: Create Cloud Firestore

Create a new Cloud Firestore database and add the following rules to allow users to read/write their own data:

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

### Step 6: Run the app

Run the app on port 5000:

```bash
flutter run -d chrome --web-port=5000
```

If you see CORS issues, go to the [Services section][cloud-console-apis] in the
Google Cloud console, go to Credentials, and verify that `localhost:5000` is
whitelisted.

### (optional) Step 7: Set up iOS and Android
If you would like to run the app on iOS or Android, make sure you've installed
the appropriate configuration files described at
[firebase.google.com/docs/flutter/setup][flutter-setup] from step 1, and follow
the instructions detailed in the [google_sign_in README][google-sign-in]

[flutter-setup]: https://firebase.google.com/docs/flutter/setup
[cloud-console-apis]: https://console.developers.google.com/apis/dashboard
[google-sign-in]: https://pub.dev/packages/google_sign_in

