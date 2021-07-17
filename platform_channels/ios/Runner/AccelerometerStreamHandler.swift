// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import CoreMotion

class AccelerometerStreamHandler: NSObject, FlutterStreamHandler {
    
    var motionManager: CMMotionManager;
    
    override init() {
        motionManager = CMMotionManager()
    }
    
    func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        
        if !motionManager.isAccelerometerAvailable {
            events(FlutterError(code: "SENSOR_UNAVAILABLE", message: "Accelerometer is not available", details: nil))
        }
        
        motionManager.accelerometerUpdateInterval = 0.1
        
        motionManager.startAccelerometerUpdates(to: OperationQueue.main) {(data, error) in
            guard let accelerationData = data?.acceleration else {
                events(FlutterError(code: "DATA_UNAVAILABLE", message: "Cannot get accelerometer data", details: nil ))
                return
            }
            
            events([accelerationData.x, accelerationData.y, accelerationData.z])
        }
        
        return nil
    }
    
    func onCancel(withArguments arguments: Any?) -> FlutterError? {
        return nil
    }
}
