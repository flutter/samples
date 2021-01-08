#import "HelloPlugin.h"
#if __has_include(<hello/hello-Swift.h>)
#import <hello/hello-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "hello-Swift.h"
#endif

@implementation HelloPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHelloPlugin registerWithRegistrar:registrar];
}
@end
