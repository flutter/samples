import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'location_method_channel.dart';

abstract class FederatedPluginInterface extends PlatformInterface {
  FederatedPluginInterface() : super(token: _object);

  static FederatedPluginInterface _federatedPluginInterface =
      LocationMethodChannel();

  static final Object _object = Object();

  static FederatedPluginInterface get instance => _federatedPluginInterface;

  static set instance(FederatedPluginInterface instance) {
    PlatformInterface.verifyToken(instance, _object);
    _federatedPluginInterface = instance;
  }

  Future<String> getLocation() async {
    throw UnimplementedError('getLocation() has not been implemented.');
  }
}
