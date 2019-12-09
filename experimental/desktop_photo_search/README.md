# Photo Search app

This macOS application enables you to search [Unsplash](https://unsplash.com/)
for photographs that interest you. To use it, you need to add an
**Access Key** from [Unsplash API](https://unsplash.com/developers) to
[unsplash_access_key.dart](lib/unsplash_access_key.dart).

## A quick tour of the code

This Flutter project builds a desktop application. It utilises the following
desktop specific plugins:

  - [file_choser] to enable the application user to select where to save a photo
    from the Unsplash API.
  - [menubar] for exposing Image Search functionality through the menu bar.
  - [url_launcher_fde] and [url_launcher] plugin, which are used to open external links.
  - [shared_preferences_fde] and [shared_preferences] for storing and retrieving
    a list of favourited Photos.

The Unsplash API client entry point is in the [Unsplash] class, and is built
atop [http], [built_value] and [built_collection] for JSON Rest API access.

The [DataTreeNode] and widget family, along with the [Split] widget capture
desktop file explorer master/detail view idioms.

## macOS Network and File entitlements

To access the network, macOS requires applications enable the
[com.apple.security.network.client entitlement][macOS-client]. For this
sample, this entitlement is required to access the Unsplash API.

Likewise, to save a Photo to the local file system using the `file_choser` plugin requires the
[com.apple.security.files.user-selected.read-write entitlement][macOS-read-write].

Please see [macOS Signing and Security][macOS-security] for more detail.

## Flutter Desktop is not in Flutter Stable Release Channel

This sample is an initial preview, intended to enable developers to preview what is
under development. As such, it is currently only available for use on the `master` channel
of Flutter. Please see [Flutter build release channels][flutter_channels] for more detail,
and how to switch between Flutter release channels.

[DataTreeNode]: lib/src/widgets/data_tree.dart
[Split]: lib/src/widgets/split.dart
[Unsplash]: lib/src/unsplash/unsplash.dart

[built_collection]: https://pub.dev/packages/built_collection
[built_value]: https://pub.dev/packages/built_value
[file_choser]: https://github.com/google/flutter-desktop-embedding/tree/master/plugins/file_chooser
[flutter_channels]: https://github.com/flutter/flutter/wiki/Flutter-build-release-channels
[http]: https://pub.dev/packages/http
[macOS-client]: https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_network_client
[macOS-read-write]: https://developer.apple.com/documentation/bundleresources/entitlements/com_apple_security_files_user-selected_read-write
[macOS-security]: https://github.com/google/flutter-desktop-embedding/blob/master/macOS-Security.md
[menubar]: https://github.com/google/flutter-desktop-embedding/tree/master/plugins/menubar
[shared_preferences]: https://pub.dev/packages/shared_preferences
[shared_preferences_fde]: https://github.com/google/flutter-desktop-embedding/tree/master/plugins/flutter_plugins/shared_preferences_fde
[url_launcher]: https://pub.dev/packages/url_launcher
[url_launcher_fde]: https://github.com/google/flutter-desktop-embedding/tree/master/plugins/flutter_plugins/url_launcher_fde
