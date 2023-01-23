#import <CoreMotion/CoreMotion.h>
#import <CoreMotion/CMPedometer.h>
#import <Foundation/Foundation.h>
#import <Foundation/NSDate.h>

#include "dart-sdk/include/dart_api_dl.h"

@interface PedometerHelper : NSObject

+ (void) startPedometerWithPort: (Dart_Port) sendPort
                      pedometer: (CMPedometer*) pedometer
                          start: (NSDate*) start
                            end: (NSDate*) end;

@end
