import 'package:dbus/dbus.dart';
import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:upower/upower.dart';

class FederatedPluginLinux extends FederatedPluginInterface {

  static void register() {
    FederatedPluginInterface.instance = FederatedPluginLinux();
  }

  @override
  Future<int> getBatteryLevel() async {
    var uPowerClient = UPowerClient(DBusClient.system());

    double batteryLevelSum;
    uPowerClient.devices.forEach((device) {
      batteryLevelSum += device.percentage;
    });

    return (batteryLevelSum / uPowerClient.devices.length).round();
  }
}
