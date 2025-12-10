# ios_content_resizing

Embeds an instance of Flutter into an existing iOS app that will dynamically resize itself based off of it's content. 

## Description

This sample showcases the integration of a self-resizing Flutter view within a native UIKit environment. The Flutter module features an expanding column of widgets. As items are added, the hosting UIView will automatically adjusts its [intrinsicContentSize](https://developer.apple.com/documentation/uikit/uiview/intrinsiccontentsize) to accommodate the new content size.

## tl;dr

If you're just looking to get up and running quickly, these bash commands will
fetch packages and set up dependencies (note that the above commands assume
you're building for both iOS and Android, with both toolchains installed):

```bash
  #!/bin/bash
  set -e

  cd flutter_module/
  flutter pub get

  # For iOS builds:
  cd ../ios_content_resizing
  pod install
  open ios_content_resizing.xcworkspace
  # Then, click "Run" in Xcode to launch the app into your Simulator or device
```

## Requirements

* Flutter
* iOS
  * Xcode
  * Cocoapods

## Questions/issues

See [add_to_app/README.md](../README.md) for further help.
