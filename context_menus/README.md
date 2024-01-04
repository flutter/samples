# Custom Context Menus

This sample shows how to create and customize cross-platform context menus,
such as the text selection toolbar on mobile or the right click menu on desktop.

| ![Cascading example screenshot](https://raw.githubusercontent.com/flutter/samples/main/experimental/context_menus/screenshots/cascading.png) | ![Custom button example screenshot](https://raw.githubusercontent.com/flutter/samples/main/experimental/context_menus/screenshots/custom.png) | ![Email example screenshot](https://raw.githubusercontent.com/flutter/samples/main/experimental/context_menus/screenshots/email.png) | ![Widget example screenshot](https://raw.githubusercontent.com/flutter/samples/main/experimental/context_menus/screenshots/image.png) |
| --- | --- | --- | --- |

## Running the sample

Just run `flutter run` in the same directory as this README file.

## The examples

### [Anywhere](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/anywhere_page.dart)
Shows how to create a context menu in the parts of an app that don't related to
text selection.  For example, a menu in a desktop app that shows when the
background of the app is right clicked.

### [Cascading menus](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/cascading_menu_page.dart)
Shows how to create a context menu with cascading submenus using
[SubmenuButton](https://master-api.flutter.dev/flutter/material/SubmenuButton-class.html).

### [Custom buttons](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/custom_buttons_page.dart)
Shows how to customize the default buttons in the existing context menus.

### [Custom menu](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/custom_menu_page.dart)
Shows how to use any custom widgets as the menu itself, including the option to
keep the default buttons.

### [Default values](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/default_values_page.dart)
Demonstrates how the
[contextMenuBuilder](https://master-api.flutter.dev/flutter/material/TextField/contextMenuBuilder.html)
property works with various possible values.

### [Email button](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/email_button_page.dart)
Shows how to create an "email" button in the default context menu that shows
only when an email address is selected.

### [Field types](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/field_types_page.dart)
Shows how context menus work in the various different field widgets:
EditableText, TextField, and CupertinoTextField.

### [Global selection](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/global_selection_page.dart)
Shows how to create a custom context menu in non-editable selection with
[SelectionArea](https://master-api.flutter.dev/flutter/material/SelectionArea-class.html).

### [On a widget](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/image_page.dart)
Shows how to make a widget show a context menu on right click or long press, in
this case an Image widget.

### [Modified action](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/modified_action_page.dart)
Shows how to modify an existing button so that a custom action is performed when
it is tapped.

### [Reordered buttons](https://github.com/flutter/samples/blob/main/experimental/context_menus/lib/reordered_buttons_page.dart)
Shows how to change the order of the default buttons.
