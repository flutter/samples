import UIKit

class DoubleFlutterViewController : UIViewController {
  let _topFlutter : SingleFlutterViewController = SingleFlutterViewController(withEntrypoint: "topMain")
  let _bottomFlutter : SingleFlutterViewController = SingleFlutterViewController(withEntrypoint: "bottomMain")

  override func viewDidLoad() {
    addChild(_topFlutter)
    addChild(_bottomFlutter)
    let halfHeight = self.view.bounds.height/2.0
    _topFlutter.view.frame = CGRect(x: 0, y: 0, width: self.view.bounds.width, height: halfHeight);
    _bottomFlutter.view.frame = CGRect(x: 0, y: halfHeight, width: self.view.bounds.width, height: halfHeight);
    self.view.addSubview(_topFlutter.view)
    self.view.addSubview(_bottomFlutter.view)
    _topFlutter.didMove(toParent: self)
    _bottomFlutter.didMove(toParent: self)
  }
}
