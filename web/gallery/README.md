# Flutter gallery

This is a copy of the [Flutter gallery] hosted at
[flutter.github.io/samples][hosted url].

## Updating

To update, copy the contents of the gallery directory, and remove the following
files and directories:

```bash
rm  BUILD.gn
rm -rf tool/
rm -rf test/
rm -rf android/ 
rm -rf ios/
```

If you changed the `pubspec.yaml` file, make sure to use Google Sans instead of
San Francisco (which is not available on the web) by copy-pasting the `fonts`
section from Google Sans:
- Use "GoogleSans" for ".SF Pro Text".
- Use "GoogleSansDisplay" for ".SF Pro Display"
- Use "GoogleSans" for ".SF UI Text"
- Use "GoogleSansDisplay" for ".SF UI Display".

[Flutter gallery]: https://github.com/flutter/flutter/tree/master/examples/flutter_gallery
[hosted url]: https://flutter.github.io/samples/gallery/#/
