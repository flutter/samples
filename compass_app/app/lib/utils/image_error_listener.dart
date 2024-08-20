import 'package:logging/logging.dart';

final _log = Logger('ImageErrorListener');

void imageErrorListener(Object error) {
  _log.warning('Failed to load image', error);
}
