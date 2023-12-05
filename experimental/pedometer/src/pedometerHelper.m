#import "pedometerHelper.h"
#import <CoreMotion/CoreMotion.h>
#import <CoreMotion/CMPedometer.h>
#import <Foundation/Foundation.h>

// TODO(https://github.com/dart-lang/native/issues/835): Generate this wrapper
// automatically.
CMPedometerHandler wrapCallback(CMPedometerHandler callback) {
  return [^(CMPedometerData *data, NSError *error) {
    return callback([data retain], [error retain]);
  } copy];
}
