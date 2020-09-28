import 'package:dbus/dbus.dart';
import 'package:federated_plugin_platform_interface/federated_plugin_platform_interface.dart';
import 'package:upower/upower.dart';

class FederatedPluginLinux extends FederatedPluginInterface {

  @override
  Future<int> getBatteryLevel() async {
    var uPowerClient = UPowerClient(DBusClient.system());
    await uPowerClient.connect();

    var batteryLevelSum = 0.0;
    uPowerClient.devices.forEach((device) {
      batteryLevelSum += device.percentage;
    });

    uPowerClient.close();
    return (batteryLevelSum / uPowerClient.devices.length).round();
  }
}
