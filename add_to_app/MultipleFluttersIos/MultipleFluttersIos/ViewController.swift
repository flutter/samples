import UIKit
import Flutter

/// UIViewController associated with the NativeViewCount storyboard scene.
class ViewController: UIViewController, DataModelObserver {
  @IBOutlet weak var countView : UILabel!
  
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
    if navController.viewControllers.count % 4 == 1 {
      let vc = SingleFlutterViewController(withEntrypoint: nil)
      navController.pushViewController(vc, animated: true)
    } else {
      let vc = DoubleFlutterViewController()
      navController.pushViewController(vc, animated: true)
    }
  }
}
