#import <CoreMotion/CoreMotion.h>
#import <CoreMotion/CMPedometer.h>
#import <Foundation/Foundation.h>

typedef void (^PedometerCallback)(CMPedometerData *data, NSError *error);

// TODO(https://github.com/dart-lang/native/issues/835): Generate this wrapper
// automatically.
PedometerCallback wrapCallback(PedometerCallback callback);
