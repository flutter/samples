import Flutter
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGroupedBackground
        showStyledScrollView()
    }

    func showStyledScrollView() {
        let scrollView = UIScrollView()
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 12 // Spacing between the "cards"

        let engine1 = FlutterEngine(name: "one")
        engine1.run()

        for index in 1...50 {
            if index == 10 {
                // This is our Flutter view
                let flutterViewController = FlutterViewController(engine: engine1, nibName: nil, bundle: nil)
                flutterViewController.isAutoResizable = true
                addChild(flutterViewController)
                
                // The Flutter view's background should be clear to see the card behind it
                flutterViewController.view.backgroundColor = .clear
                
                // Wrap the Flutter view in a styled container "card"
                let cardView = UIView()
                cardView.backgroundColor = .systemBackground
                cardView.layer.cornerRadius = 12
                cardView.layer.masksToBounds = true
                
                flutterViewController.view.translatesAutoresizingMaskIntoConstraints = false
                cardView.addSubview(flutterViewController.view)
                
                NSLayoutConstraint.activate([
                    flutterViewController.view.topAnchor.constraint(equalTo: cardView.topAnchor),
                    flutterViewController.view.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
                    flutterViewController.view.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
                    flutterViewController.view.bottomAnchor.constraint(equalTo: cardView.bottomAnchor)
                ])
                
                stackView.addArrangedSubview(cardView)
                flutterViewController.didMove(toParent: self)

            } else {
                let label = UILabel()
                label.text = "It's me, iOS \(index)"
                label.translatesAutoresizingMaskIntoConstraints = false
                
                let cardView = UIView()
                cardView.backgroundColor = .systemBackground
                cardView.layer.cornerRadius = 12
                cardView.addSubview(label)
                
                NSLayoutConstraint.activate([
                    label.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 16),
                    label.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -16),
                    label.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 16),
                    label.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -16)
                ])
                
                stackView.addArrangedSubview(cardView)
            }
        }
        
        // --- Auto Layout Setup ---
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        // Set constraints for the scroll view to fill the main view
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        // Set constraints for the stack view within the scroll view
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor, constant: -20),
            // Inset the stack view horizontally for the grouped look
            stackView.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.trailingAnchor, constant: -20)
        ])
    }
}
