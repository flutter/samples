// Copyright 2021 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import Flutter
import UIKit

/// UIViewController associated with the NativeViewCount storyboard scene.
class HostViewController: UIViewController, DataModelObserver {
  @IBOutlet weak var countView: UILabel!

  deinit {
    DataModel.shared.removeObserver(observer: self)
  }

  func onCountUpdate(newCount: Int64) {
    self.countView.text = String(format: "%d", newCount)
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    DataModel.shared.addObserver(observer: self)
    onCountUpdate(newCount: DataModel.shared.count)
  }

  @IBAction func onAddCount() {
    DataModel.shared.count = DataModel.shared.count + 1
  }

  @IBAction func onNext() {
    let navController = self.navigationController!
    // Based on the number of view controllers in the stack we push a
    // SingleFlutterViewController or DoubleFlutterViewController to alternatve
    // between the two.
    if navController.viewControllers.count % 4 == 1 {
      let vc = SingleFlutterViewController(withEntrypoint: nil)
      navController.pushViewController(vc, animated: true)
    } else {
      let vc = DoubleFlutterViewController()
      navController.pushViewController(vc, animated: true)
    }
  }
}
