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

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100.0,
      child: DropdownButton<TargetPlatform>(
        value: defaultTargetPlatform,
        icon: const Icon(Icons.arrow_downward),
        elevation: 16,
        onChanged: (TargetPlatform? value) {
          if (value == null) {
            return;
          }

          widget.onChangedPlatform(value);
          setState(() {});
        },
        items: TargetPlatform.values.map((TargetPlatform platform) {
          return DropdownMenuItem<TargetPlatform>(
            value: platform,
            child: Text(_platformToString(platform)),
          );
        }).toList(),
      ),
    );
  }
}

