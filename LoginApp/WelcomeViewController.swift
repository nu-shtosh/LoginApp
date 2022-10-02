//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Ilia D on 30.09.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var welcomeLabel: UILabel!

    // MARK: - Properties
    var receivedUser: String!

    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setGradientBackground()
        welcomeLabel.text = "Welcome, \(receivedUser ?? "")!"
    }
}

// MARK: - Gradient view
extension WelcomeViewController {
    func setGradientBackground() {
        let colorTop = UIColor(
            red: 155.0/255.0,
            green: 155.0/255.0,
            blue: 155.0/255.0,
            alpha: 1.0
        ).cgColor
        let colorBottom = UIColor(
            red: 25.0/255.0,
            green: 25.0/255.0,
            blue: 25.0/255.0,
            alpha: 1.0
        ).cgColor

        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds

        view.layer.insertSublayer(gradientLayer, at:0)
    }
}
