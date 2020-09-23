#import "PigeonPlugin.h"
#if __has_include(<pigeon_plugin/pigeon_plugin-Swift.h>)
#import <pigeon_plugin/pigeon_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "pigeon_plugin-Swift.h"
#endif

@implementation PigeonPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPigeonPlugin registerWithRegistrar:registrar];
}
@end
