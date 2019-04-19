# Platform Design

Instead of transliterating widget one by one between Cupertino and Material,
Android and iOS apps often follow different Information Architecture patterns
that requires some design decisions.

This sample project shows a Flutter app that maximizes application code reuse
while adhering to different design patterns on Android and iOS. Namely, on
Android, it uses Material's [lateral navigation](https://material.io/design/navigation/understanding-navigation.html#types-of-navigation)
based on a drawer and on iOS, it uses Apple Human Interface Guideline's
[flat navigation](https://developer.apple.com/design/human-interface-guidelines/ios/app-architecture/navigation/)
via a bottom tab bar.

Visually, the app opts for a generally platform-agnostic content surrounded
by a platform-specific 'chrome'.

# Preview

![App's platform toggling preview](adaptive-overview.gif)

See https://streamable.com/7frr2 for a longer non-gif format.
See https://youtu.be/svhbbFZg1IA for a higher resolution video.

# Features

## Home

* Uses the drawer paradigm on Android's root page.
* Uses bottom tab bars with parallel navigation stacks on iOS.

## Tab 1 - Songs feed

* The iOS tab 1 uses a scrollable iOS 11 large title style navigation bar.
* Android and iOS tab 1 uses their respective platform-appropriate pull-to-refresh
paradigms UI. Android additionally show a refresh button on the app bar.
* Platform-agnostic cards on tab 1 is tappable and performs a hero transition on
top of the platform native page transitions.
* The song details page must be exited in order to change tabs on Android. On
iOS, parallel tabs are always accessible and tab 1's navigation stack is preserved
when changing tabs.

## Tab 2 - News

* Tab 2 appears on top of tab 1 on Android and instead of tab 1 on iOS.
* Shows platform-agnostic news boxes.

## Tab 3 - Profile

* Tab 3 appears on top of tab 1 on Android and instead of tab 1 on iOS.
* Has tappable preference cards which shows a multiple-choice dialog on Android
and a picker on iOS.
* The log out button shows a 2 button dialog on Android and a 3 choice action
sheet on iOS.

## Tab 4 - Settings

* Tab 4 is directly available in the drawer on Android and is accessible from
a button inside tab 3's nav bar on iOS. This is a common pattern since there are
conventionally more items in the drawer than there are tabs.
* On iOS, the settings page is shown as a full screen dialog instead of a tab
in the tab scaffold.
* Material switches auto adapt to the platform.
