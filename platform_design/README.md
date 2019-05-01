# Platform Design

Instead of transliterating widgets one by one between Cupertino and Material,
Android and iOS apps often follow different information architecture patterns
that require some design decisions.

This sample project shows a Flutter app that maximizes application code reuse
while adhering to different design patterns on Android and iOS. On
Android, it uses Material's [lateral navigation](https://material.io/design/navigation/understanding-navigation.html#types-of-navigation)
based on a drawer and on iOS, it adheres to Apple Human Interface Guideline's
[flat navigation](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/navigation/)
by using a bottom tab bar.

Visually, the app presents platform-agnostic content surrounded by
platform-specific 'chrome'.

# Preview

![App's platform toggling preview](adaptive-overview.gif)

See https://streamable.com/7frr2 for a longer non-gif format.
See https://youtu.be/svhbbFZg1IA for a higher resolution video.

# Features

## Home

Defines the top level navigation structure of the app and shows the contents
of tab 1 on launch.

### Android

* Uses the drawer paradigm on the root page.

### iOS

* Uses bottom tab bars with parallel navigation stacks.

## Tab 1 - Songs feed

Shows platform-agnostic cards on tab 1 that is tappable and that performs a hero
transition on top of the platform native page transitions.

Both platforms also show a button in their app/nav bar to toggle the platform.

### Android

* Android uses a static pull-to-refresh pattern with an additional refresh
button in the app bar.
* The song details page must be popped in order to change tabs on Android.

### iOS

* The iOS tab 1 uses a scrollable iOS 11 large title style navigation bar.
* iOS uses an overscrolling pull-to-refresh pattern.
* On iOS, parallel tabs are always accessible and tab 1's navigation stack is
preserved when changing tabs.

## Tab 2 - News

Shows platform-agnostic news boxes.

### Android

* Tab 2 always appears on top of tab 1 when summoned from the drawer.

### iOS

* Tab 2 appears instead of tab 1 on iOS when switching tabs from the tab bar.

## Tab 3 - Profile

Shows a number of user preferences.

### Android

* Tab 3 appears on top of tab 1 on Android.
* Has tappable preference cards which shows a multiple-choice dialog on Android.
* The log out button shows a 2 button dialog on Android.

### iOS

* Tab 3 appears instead of tab 1 on iOS.
* Has tappable preference cards which shows a picker on iOS.
* The log out button shows a 3 choice action sheet on iOS.

## Tab 4 - Settings

Shows a number of app settings via Material switches which auto adapt to the
platform.

### Android

* Tab 4 is directly available in the drawer on Android since a Material Design
drawer can fit many tabs.

### iOS

* Tab 4 is accessible from a button inside tab 3's nav bar on iOS. This is a
common pattern since there are conventionally more items in the drawer than
there are tabs.
* On iOS, the settings page is shown as a full screen dialog instead of a tab
in the tab scaffold.
