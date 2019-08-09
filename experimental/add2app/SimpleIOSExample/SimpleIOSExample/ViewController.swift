import UIKit
import Flutter

class ViewController: UIViewController {

    @IBOutlet weak var launchButton: UIButton!
    
    @IBAction func buttonWasTapped(_ sender: Any) {
        let flutterEngine = (UIApplication.shared.delegate as? AppDelegate)?.flutterEngine;
        let flutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)!;
        self.present(flutterViewController, animated: false, completion: nil)
    }
}
