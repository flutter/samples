import 'package:flutter/foundation.dart';
import 'package:js/js.dart';

enum DemoScreen {
  counter('counter'),
  text('text'),
  dash('dash');

  const DemoScreen(String screen) : _screen = screen;
  final String _screen;

  @override
  String toString() => _screen;
}

/// This is the bit of state that JS is able to see.
///
/// It contains getters/setters/operations and a mechanism to
/// subscribe to change notifications from an incoming [notifier].
@JSExport()
class DemoAppStateManager {
  // Creates a DemoAppStateManager wrapping a ValueNotifier.
  DemoAppStateManager({
    required ValueNotifier<DemoScreen> screen,
    required ValueNotifier<int> counter,
    required ValueNotifier<String> text,
  })  : _counter = counter,
        _text = text,
        _screen = screen;

  final ValueNotifier<DemoScreen> _screen;
  final ValueNotifier<int> _counter;
  final ValueNotifier<String> _text;

  // _counter
  int getClicks() {
    return _counter.value;
  }

  void setClicks(int value) {
    _counter.value = value;
  }

  void incrementClicks() {
    _counter.value++;
  }

  void decrementClicks() {
    _counter.value--;
  }

  // _text
  void setText(String text) {
    _text.value = text;
  }

  String getText() {
    return _text.value;
  }

  // _screen
  void setScreen(String screen) {
    _screen.value = DemoScreen.values.byName(screen);
  }

  String getScreen() {
    return _screen.value.toString();
  }

  // Allows clients to subscribe to changes to the wrapped value.
  void onClicksChanged(VoidCallback f) {
    _counter.addListener(f);
  }

  void onTextChanged(VoidCallback f) {
    _text.addListener(f);
  }

  void onScreenChanged(VoidCallback f) {
    _screen.addListener(f);
  }
}
