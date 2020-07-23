#import "FederatedPlugin.h"
#if __has_include(<federated_plugin/federated_plugin-Swift.h>)
#import <federated_plugin/federated_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "federated_plugin-Swift.h"
#endif

@implementation FederatedPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFederatedPlugin registerWithRegistrar:registrar];
}
@end
