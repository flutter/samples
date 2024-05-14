import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

class DeviceInfo {
  static Future<BaseDeviceInfo> initialize(DeviceInfoPlugin plugin) async {
    if (kIsWeb) {
      return await plugin.webBrowserInfo;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return await plugin.androidInfo;
      case TargetPlatform.iOS:
        return await plugin.iosInfo;
      case TargetPlatform.macOS:
        return plugin.macOsInfo;
      case TargetPlatform.windows:
        return await plugin.windowsInfo;
      case TargetPlatform.linux:
        return await plugin.linuxInfo;
      default:
        throw UnsupportedError(
          'Device info not supported for this platform',
        );
    }
  }

  static bool isPhysicalDeviceWithCamera(BaseDeviceInfo deviceInfo) {
    if (deviceInfo is! IosDeviceInfo && deviceInfo is! AndroidDeviceInfo) {
      return false;
    }
    if (deviceInfo is IosDeviceInfo && deviceInfo.isPhysicalDevice) {
      return true;
    }
    if (deviceInfo is AndroidDeviceInfo && deviceInfo.isPhysicalDevice) {
      return true;
    }
    return false;
  }
}
