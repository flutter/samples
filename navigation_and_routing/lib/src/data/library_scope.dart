import 'package:flutter/widgets.dart';

import 'library.dart';

class LibraryScope extends InheritedWidget {
  final Library library;

  const LibraryScope({
    Key? key,
    required this.library,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(LibraryScope oldWidget) =>
      library != oldWidget.library;

  static Library of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LibraryScope>()!.library;
  }
}
