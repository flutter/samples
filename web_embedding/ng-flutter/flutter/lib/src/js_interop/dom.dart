/// This is a little bit of JS-interop code so this Flutter app can dispatch
/// a custom JS event (to be deprecated by package:web)
library;

import 'dart:js_interop';

@JS('CustomEvent')
@staticInterop
class DomCustomEvent {
  external factory DomCustomEvent.withType(JSString type);
  external factory DomCustomEvent.withOptions(JSString type, JSAny options);
  factory DomCustomEvent._(String type, [Object? options]) {
    if (options != null) {
      return DomCustomEvent.withOptions(type.toJS, options.jsify()!);
    }
    return DomCustomEvent.withType(type.toJS);
  }
}

dispatchCustomEvent(DomElement target, String type, Object data) {
  final DomCustomEvent event = DomCustomEvent._(type, <String, Object>{
    'bubbles': true,
    'composed': true,
    'detail': data,
  });

  target.dispatchEvent(event);
}

@JS()
@staticInterop
class DomEventTarget {}

extension DomEventTargetExtension on DomEventTarget {
  @JS('dispatchEvent')
  external JSBoolean _dispatchEvent(DomCustomEvent event);
  bool dispatchEvent(DomCustomEvent event) => _dispatchEvent(event).toDart;
}

@JS()
@staticInterop
class DomElement extends DomEventTarget {}

extension DomElementExtension on DomElement {
  @JS('querySelector')
  external DomElement? _querySelector(JSString selectors);
  DomElement? querySelector(String selectors) => _querySelector(selectors.toJS);
}

@JS()
@staticInterop
class DomDocument extends DomElement {}

@JS()
@staticInterop
external DomDocument get document;
