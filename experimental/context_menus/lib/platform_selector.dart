import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef PlatformCallback = void Function(TargetPlatform platform);

class PlatformSelector extends StatefulWidget {
  const PlatformSelector({
    super.key,
    required this.onChangedPlatform,
  });

  final PlatformCallback onChangedPlatform;

  @override
  State<PlatformSelector> createState() => _PlatformSelectorState();
}

class _PlatformSelectorState extends State<PlatformSelector> {
  static const int targetPlatformStringLength = 15; // 'TargetPlatform.'.length

  static String _platformToString(TargetPlatform platform) {
    return platform.toString().substring(targetPlatformStringLength);
  }

  final TargetPlatform originaPlatform = defaultTargetPlatform;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170.0,
      child: DropdownButton<TargetPlatform>(
        value: defaultTargetPlatform,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        onChanged: (value) {
          if (value == null) {
            return;
          }

          widget.onChangedPlatform(value);
          setState(() {});
        },
        items: TargetPlatform.values.map((platform) {
          return DropdownMenuItem<TargetPlatform>(
            value: platform,
            child: Row(
              children: <Widget>[
                if (platform == originaPlatform)
                  const Icon(
                    Icons.home,
                    color: Color(0xff616161),
                  ),
                Text(_platformToString(platform)),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
