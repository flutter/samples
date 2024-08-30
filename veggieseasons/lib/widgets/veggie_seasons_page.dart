// Copyright 2024, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';

class VeggieSeasonsPage<T> extends Page<T> {
  final Widget child;

  const VeggieSeasonsPage({
    super.key,
    required this.child,
    super.restorationId,
  });

  @override
  VeggieSeasonsPageRoute<T> createRoute(BuildContext context) =>
      VeggieSeasonsPageRoute<T>(this);
}

class VeggieSeasonsPageRoute<T> extends PageRoute<T> {
  VeggieSeasonsPageRoute(VeggieSeasonsPage<T> page) : super(settings: page);

  VeggieSeasonsPage<T> get _page => settings as VeggieSeasonsPage<T>;

  @override
  Color? get barrierColor => null;

  @override
  String? get barrierLabel => null;

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => Duration.zero;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) =>
      _page.child;
}
