// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// [EdgeChildrenFocusTraversalPolicy] can be used to make sure that when you
/// are at the last or first focus node inside of a focus scope, we'll request
/// focus for given focus node outside of the scope.
///
/// This can be used to for example make sure that you can request focus outside
/// of the MaterialApp you are currently in.
class EdgeChildrenFocusTraversalPolicy extends WidgetOrderTraversalPolicy {
  EdgeChildrenFocusTraversalPolicy({
    @required this.firstFocusNodeOutsideScope,
    @required this.lastFocusNodeOutsideScope,
    this.focusScope,
    this.firstFocusNodeInsideScope,
    this.lastFocusNodeInsideScope,
  }) : assert((focusScope != null &&
                firstFocusNodeInsideScope == null &&
                lastFocusNodeInsideScope == null) ||
            (firstFocusNodeInsideScope != null &&
                lastFocusNodeInsideScope != null &&
                focusScope == null));

  final FocusNode firstFocusNodeOutsideScope;
  final FocusNode lastFocusNodeOutsideScope;

  /// Either provide [focusScope] or both [firstFocusNodeInsideScope]
  /// and [lastFocusNodeInsideScope].
  final FocusScopeNode focusScope;
  final FocusNode firstFocusNodeInsideScope;
  final FocusNode lastFocusNodeInsideScope;

  @override
  bool previous(FocusNode currentNode) {
    if (currentNode ==
        (firstFocusNodeInsideScope ??
            focusScope.traversalChildren.toList().first)) {
      firstFocusNodeOutsideScope.requestFocus();
      return true;
    } else {
      return super.previous(currentNode);
    }
  }

  @override
  bool next(FocusNode currentNode) {
    if (currentNode ==
        (lastFocusNodeInsideScope ??
            focusScope.traversalChildren.toList().last)) {
      lastFocusNodeOutsideScope.requestFocus();
      return true;
    } else {
      return super.next(currentNode);
    }
  }
}
