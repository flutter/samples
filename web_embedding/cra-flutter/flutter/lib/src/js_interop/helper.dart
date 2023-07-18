import 'dom.dart' as dom;

/// Locates the root of the flutter app (for now, the first element that has
/// a flt-renderer tag), and dispatches a JS event named [name] with [data].
void broadcastAppEvent(String name, Object data) {
  final dom.DomElement? root = dom.document.querySelector('[flt-renderer]');
  assert(root != null, 'Flutter root element cannot be found!');

  dom.dispatchCustomEvent(root!, name, data);
}
