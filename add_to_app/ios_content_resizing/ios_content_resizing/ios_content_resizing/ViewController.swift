import Flutter
import UIKit

class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()

    showScollView()
  }

  func showScollView() {
    let scrollView = UIScrollView()
    scrollView.isUserInteractionEnabled = true

    let stackView = UIStackView()
    stackView.axis = .vertical
    stackView.distribution = .fill
    stackView.backgroundColor = .yellow
    stackView.translatesAutoresizingMaskIntoConstraints = false

    let engine1 = FlutterEngine(name: "one")
    engine1.run()

    for index in 1...50 {
      if (index == 10) {
        let flutterViewController = FlutterViewController(engine: engine1, nibName: nil, bundle: nil)
        flutterViewController.isAutoResizable = true
        addChild(flutterViewController)
        stackView.addArrangedSubview(flutterViewController.view)
        flutterViewController.didMove(toParent: self)

      } else {
        let label = UILabel()
        label.text = "Hello from iOS \(index)"
        stackView.addArrangedSubview(label)
      }
    }
    scrollView.addSubview(stackView)
    scrollView.layoutIfNeeded()
    self.view.addSubview(scrollView)

    scrollView.translatesAutoresizingMaskIntoConstraints = false
    scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true

    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
    stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
    stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
    stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
    stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
  }
}
