# Photo Search app

This desktop application enables you to search 
[Unsplash](https://unsplash.com/) for photographs that interest you. 
To use it, you need to add an **Access Key** from 
[Unsplash API](https://unsplash.com/developers) to
`lib/unsplash_access_key.dart`.

This sample works on Windows.

## A quick tour of the code

This Flutter project builds a desktop application. It utilises the following
desktop specific plugins and packages:

  - [fluent_ui] for the Fluent UI widget set
  - [file_chooser] to enable the application user to select where to save a photo
    from the Unsplash API.
  - [menubar] for exposing Image Search functionality through the menu bar.
  - [url_launcher] to open external links.

The Unsplash API client entry point is in the [Unsplash] class, and is built
atop [http], [built_value] and [built_collection] for JSON Rest API access.

## Deploying to the Microsoft Store

This sample uses Yehuda Kremer's [MSIX pub package] to bundle up the Windows 
release build for distribution to the [Microsoft Store]. Microsoft maintains 
a [plethora of documentation][ms_store_publishing_doc] on deploying to the 
Microsoft Store. 

See the `msix_config` stanza in this sample's `pubspec.yaml` for an
example configuration. Make sure the `display_name`, `publisher_display_name`,
`publisher` and `identity_name` attributes match the settings in your 
Microsoft Partner Center application submission.

[Unsplash]: lib/src/unsplash/unsplash.dart

[built_collection]: https://pub.dev/packages/built_collection
[built_value]: https://pub.dev/packages/built_value
[file_chooser]: https://github.com/google/flutter-desktop-embedding/tree/master/plugins/file_chooser
[fluent_ui]: https://pub.dev/packages/fluent_ui
[flutter_channels]: https://github.com/flutter/flutter/wiki/Flutter-build-release-channels
[http]: https://pub.dev/packages/http
[menubar]: https://github.com/google/flutter-desktop-embedding/tree/master/plugins/menubar
[url_launcher]: https://pub.dev/packages/url_launcher

[MSIX pub package]: https://pub.dev/packages/msix
[Microsoft Store]: https://www.microsoft.com/en-au/p/flutter-desktop-photo-search/9nh719dxcpj4
[ms_store_publishing_doc]: https://docs.microsoft.com/en-us/windows/uwp/publish/
