# Localization

## Creating New Locale Messages

When adding new strings to be localized, update `intl_en_US.arb`, which
is used by this project as the template. When creating new entries, they
have to be in the following format:

```arb
  "dartGetterVariableName": "english translation of the message",
  "@dartGetterVariableName": {
    "description": "description that the localizations delegate will use."
  },
```

In this example, `dartGetterVariableName` should be the Dart method/property
name that you will be using in your localizations delegate.

After adding the new message in `intl_en_US.arb`, it can be used in the app by
regenerating the GalleryLocalizations delegate and the `messages_*.dart` files.
This allows use of the English message through your localizations delegate in
the application code immediately without having to wait for the translations
to be completed.

## How to Generate GalleryLocalizations with Grinder

From the `samples/gallery/` directory:
1. Make sure you have [grinder](https://pub.dev/packages/grinder) installed by
running `flutter pub get`.
2. Then run `flutter pub run grinder l10n` to generate `GalleryLocalizations`.

For more details on what `flutter pub run grinder l10n` runs, you can read below
under *How to Generate GalleryLocalizations with l10n scripts*. The current
supported locales list is sorted alphabetically. This means that after running
the script, you have to update `gallery_localizations.dart` and move the `en_US`
locale to the top of the list.

## How to Generate GalleryLocalizations with l10n scripts
To generate GalleryLocalizations, from `samples/gallery/` run:

```dart
dart ${YOUR_FLUTTER_PATH}/dev/tools/localization/bin/gen_l10n.dart \
    --template-arb-file=intl_en_US.arb \
    --output-localization-file=gallery_localizations.dart \
    --output-class=GalleryLocalizations
```

From `samples/gallery/`, run `dart tool/l10n_cli/main.dart`, which
will generate `intl_en_US.xml`. This will be used by the internal translation
console to generate messages in the different locales.

Run the formatter to make the Flutter analyzer happy:
```
flutter format .
```

## Generating New Locale Arb Files

Use the internal tool to create the `intl_<locale>.arb` files once the
translations are ready.

## Generating Flutter Localization Files

If new translations are ready and the `intl_<locale>.arb` files are already
available, run the following commands to generate all necessary
`messages_<locale>.dart` files and the `localizations_delegate.dart` file:

```
flutter pub run grinder l10n
```

which is equal to

```dart
dart ${YOUR_FLUTTER_PATH}/dev/tools/localization/bin/gen_l10n.dart \
    --template-arb-file=intl_en_US.arb \
    --output-localization-file=gallery_localizations.dart \
    --output-class=GalleryLocalizations

flutter format .
```

This ensures the generated `.dart` files updated with the latest translations.
