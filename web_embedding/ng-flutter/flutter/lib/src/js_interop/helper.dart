import 'dart:js_interop';
import 'package:web/web.dart';

/// Locates the root of the flutter app (for now, the first element that has
/// a flt-renderer tag), and dispatches a JS event named [name] with [data].
void broadcastAppEvent(String name, JSObject data) {
  final HTMLElement? root =
      document.querySelector('[flt-renderer]') as HTMLElement?;
  assert(root != null, 'Flutter root element cannot be found!');

  final eventDetails = CustomEventInit(detail: data);
  eventDetails.bubbles = true;
  eventDetails.composed = true;

  root!.dispatchEvent(CustomEvent(name, eventDetails));
}
