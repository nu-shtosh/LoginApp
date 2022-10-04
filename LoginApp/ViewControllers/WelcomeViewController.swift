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
