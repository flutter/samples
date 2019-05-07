# Chrome OS Best Practices

A Flutter sample app that builds upon the Friendlychat codelab to show how to build a responsive app that works well on Chrome OS

## Goals for this sample

* Showcase how to build an app that works well on Chrome OS including:
    * Changing layouts on screen size and handling resizing well
    * Keyboard navigation support (coming soon!)
    * Deeper mouse/trackpad support: Right click support etc... (coming soon!)

## The important bits

### `main.dart`

As of now, the main thing to look at is the main build method where we use layout builder to determine which layouts to build
```
body: LayoutBuilder(
        builder: (context, constraints) {
          final double width = constraints.maxWidth;
          debugPrint('width: $width');
          if (constraints.maxWidth > 800)
            return TwoPaneChatLayout(chatEntries: chats);
          else
            return ChatListScreen(chatEntries: chats);
        },
      ),
```
## Questions/issues

If you have a general question about building for Chrome OS in Flutter, the
best places to go are:

* [The FlutterDev Google Group](https://groups.google.com/forum/#!forum/flutter-dev)
* [The Flutter Gitter channel](https://gitter.im/flutter/flutter)
* [StackOverflow](https://stackoverflow.com/questions/tagged/flutter)

If you run into an issue with the sample itself, please file an issue
in the [main Flutter repo](https://github.com/flutter/flutter/issues).

