// Copyright 2018 the Charts project authors. Please see the AUTHORS file
// for details.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:math' show Point;
import 'package:charts_common/src/common/gesture_listener.dart';
import 'package:charts_common/src/common/proxy_gesture_listener.dart';
import 'package:test/test.dart';

void main() {
  ProxyGestureListener _proxy;
  Point<double> _point;
  setUp(() {
    _proxy = new ProxyGestureListener();
    _point = new Point<double>(10.0, 12.0);
  });

  group('Tap gesture', () {
    test('notified for simple case', () {
      // Setup
      final tapListener = new MockListener(consumeEvent: true);
      _proxy.add(new GestureListener(onTap: tapListener.callback));

      // Act
      _proxy.onTapTest(_point);
      _proxy.onTap(_point);

      // Verify
      tapListener.verify(arg1: _point);
    });

    test('notifies new listener for second event', () {
      // Setup
      final tapListener1 = new MockListener();
      _proxy.add(new GestureListener(
        onTap: tapListener1.callback,
      ));

      // Act
      _proxy.onTapTest(_point);
      _proxy.onTap(_point);

      // Verify
      tapListener1.verify(arg1: _point);

      // Setup Another
      final tapListener2 = new MockListener();
      _proxy.add(new GestureListener(
        onTap: tapListener2.callback,
      ));

      // Act
      _proxy.onTapTest(_point);
      _proxy.onTap(_point);

      // Verify
      tapListener1.verify(callCount: 2, arg1: _point);
      tapListener2.verify(arg1: _point);
    });

    test('notifies claiming listener registered first', () {
      // Setup
      final claimingTapDownListener = new MockListener(consumeEvent: true);
      final claimingTapListener = new MockListener(consumeEvent: true);

      _proxy.add(new GestureListener(
        onTapTest: claimingTapDownListener.callback,
        onTap: claimingTapListener.callback,
      ));

      final nonclaimingTapDownListener = new MockListener(consumeEvent: false);
      final nonclaimingTapListener = new MockListener(consumeEvent: false);

      _proxy.add(new GestureListener(
        onTapTest: nonclaimingTapDownListener.callback,
        onTap: nonclaimingTapListener.callback,
      ));

      // Act
      _proxy.onTapTest(_point);
      _proxy.onTap(_point);

      // Verify
      claimingTapDownListener.verify(arg1: _point);
      claimingTapListener.verify(arg1: _point);
      nonclaimingTapDownListener.verify(arg1: _point);
      nonclaimingTapListener.verify(callCount: 0);
    });

    test('notifies claiming listener registered second', () {
      // Setup
      final nonclaimingTapDownListener = new MockListener(consumeEvent: false);
      final nonclaimingTapListener = new MockListener(consumeEvent: false);

      _proxy.add(new GestureListener(
        onTapTest: nonclaimingTapDownListener.callback,
        onTap: nonclaimingTapListener.callback,
      ));

      final claimingTapDownListener = new MockListener(consumeEvent: true);
      final claimingTapListener = new MockListener(consumeEvent: true);

      _proxy.add(new GestureListener(
        onTapTest: claimingTapDownListener.callback,
        onTap: claimingTapListener.callback,
      ));

      // Act
      _proxy.onTapTest(_point);
      _proxy.onTap(_point);

      // Verify
      nonclaimingTapDownListener.verify(arg1: _point);
      nonclaimingTapListener.verify(callCount: 0);
      claimingTapDownListener.verify(arg1: _point);
      claimingTapListener.verify(arg1: _point);
    });
  });

  group('LongPress gesture', () {
    test('notifies with tap', () {
      // Setup
      final tapDown = new MockListener(consumeEvent: true);
      final tap = new MockListener(consumeEvent: true);
      final tapCancel = new MockListener(consumeEvent: true);

      _proxy.add(new GestureListener(
        onTapTest: tapDown.callback,
        onTap: tap.callback,
        onTapCancel: tapCancel.callback,
      ));

      final pressTapDown = new MockListener(consumeEvent: true);
      final longPress = new MockListener(consumeEvent: true);
      final pressCancel = new MockListener(consumeEvent: true);

      _proxy.add(new GestureListener(
        onTapTest: pressTapDown.callback,
        onLongPress: longPress.callback,
        onTapCancel: pressCancel.callback,
      ));

      // Act
      _proxy.onTapTest(_point);
      _proxy.onLongPress(_point);
      _proxy.onTap(_point);

      // Verify
      tapDown.verify(arg1: _point);
      tap.verify(callCount: 0);
      tapCancel.verify(callCount: 1);

      pressTapDown.verify(arg1: _point);
      longPress.verify(arg1: _point);
      pressCancel.verify(callCount: 0);
    });
  });

  group('Drag gesture', () {
    test('wins over tap', () {
      // Setup
      final tapDown = new MockListener(consumeEvent: true);
      final tap = new MockListener(consumeEvent: true);
      final tapCancel = new MockListener(consumeEvent: true);

      _proxy.add(new GestureListener(
        onTapTest: tapDown.callback,
        onTap: tap.callback,
        onTapCancel: tapCancel.callback,
      ));

      final dragTapDown = new MockListener(consumeEvent: true);
      final dragStart = new MockListener(consumeEvent: true);
      final dragUpdate = new MockListener(consumeEvent: true);
      final dragEnd = new MockListener(consumeEvent: true);
      final dragCancel = new MockListener(consumeEvent: true);

      _proxy.add(new GestureListener(
        onTapTest: dragTapDown.callback,
        onDragStart: dragStart.callback,
        onDragUpdate: dragUpdate.callback,
        onDragEnd: dragEnd.callback,
        onTapCancel: dragCancel.callback,
      ));

      // Act
      _proxy.onTapTest(_point);
      _proxy.onDragStart(_point);
      _proxy.onDragUpdate(_point, 1.0);
      _proxy.onDragUpdate(_point, 1.0);
      _proxy.onDragEnd(_point, 2.0, 3.0);
      _proxy.onTap(_point);

      // Verify
      tapDown.verify(arg1: _point);
      tap.verify(callCount: 0);
      tapCancel.verify(callCount: 1);

      dragTapDown.verify(arg1: _point);
      dragStart.verify(arg1: _point);
      dragUpdate.verify(callCount: 2, arg1: _point, arg2: 1.0);
      dragEnd.verify(arg1: _point, arg2: 2.0, arg3: 3.0);
      dragCancel.verify(callCount: 0);
    });
  });
}

class MockListener {
  Object _arg1;
  Object _arg2;
  Object _arg3;
  int _callCount = 0;

  final bool consumeEvent;

  MockListener({this.consumeEvent = false});

  bool callback([Object arg1, Object arg2, Object arg3]) {
    _arg1 = arg1;
    _arg2 = arg2;
    _arg3 = arg3;

    _callCount++;

    return consumeEvent;
  }

  verify({int callCount = 1, Object arg1, Object arg2, Object arg3}) {
    if (callCount != any) {
      expect(_callCount, equals(callCount));
    }
    expect(_arg1, equals(arg1));
    expect(_arg2, equals(arg2));
    expect(_arg3, equals(arg3));
  }
}

const any = -1;
